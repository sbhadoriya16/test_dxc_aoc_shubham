@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection for booking processor child'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity ZDXC_SHB_M_BOOKING_PROCESSOR
  as projection on ZDXC_SHB_M_BOOKING
{
    key TravelId,
    key BookingId,
    BookingDate,
    CustomerId,
    CarrierId,
    ConnectionId,
    FlightDate,
    FlightPrice,
    CurrencyCode,
    BookingStatus,
    LastChangedAt,
    /* Associations */
    _Carrier,
    _Connection,
    _Customer,
    _Flight,
     _Supplement: redirected to composition child ZDXC_SHB_M_BOOKGSUPL_PROCESSOR,

   _Travel : redirected to parent ZDXC_SHB_M_TRAVEL_PROCESSOR
    
}
