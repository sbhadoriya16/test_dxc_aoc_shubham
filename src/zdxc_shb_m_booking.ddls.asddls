@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BOOKING chile enity for the same BO'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZDXC_SHB_M_BOOKING as select from /dmo/booking_m
--composition of target_data_source_name as _association_name
composition of exact one to many ZDXC_SHB_M_BOOKING_SUPPL as _Supplement
association to parent ZDXC_SHB_M_TRAVEL as _Travel on
$projection.TravelId = _Travel.TravelId
association[1] to /DMO/I_Customer as _Customer on
$projection.CustomerId = _Customer.CustomerID
association[1] to /DMO/I_Carrier as _Carrier on
$projection.CarrierId = _Carrier.AirlineID
association[1] to /DMO/I_Connection as _Connection on
$projection.CarrierId = _Connection.AirlineID and
$projection.ConnectionId = _Connection.ConnectionID
association[1] to /DMO/I_Flight as _Flight on
$projection.CarrierId = _Flight.AirlineID and
$projection.ConnectionId = _Flight.ConnectionID and
$projection.FlightDate = _Flight.FlightDate
{
   key travel_id as TravelId,
   key booking_id as BookingId,
   booking_date as BookingDate,
   customer_id as CustomerId,
   carrier_id as CarrierId,
   connection_id as ConnectionId,
   flight_date as FlightDate,
   @Semantics.amount.currencyCode: 'CurrencyCode'
   flight_price as FlightPrice,
   currency_code as CurrencyCode,
   booking_status as BookingStatus,
   last_changed_at as LastChangedAt,
   _Customer,
   _Carrier,
   _Connection,
   _Flight,
   _Travel,
   _Supplement
   --_association_name // Make association public
}
