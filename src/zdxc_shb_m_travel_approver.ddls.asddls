@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection on travel entity for proces'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define root view entity ZDXC_SHB_M_TRAVEL_APPROVER
  as projection on ZDXC_SHB_M_TRAVEL
{
   key TravelId,
   AgencyId,
   AgencyName,
   CustomerId,
   CustomerName,
   BeginDate,
   EndDate,
   BookingFee,
   TotalPrice,
   CurrencyCode,
   Description,
   OverallStatus,
   StatusText,
   Criticality,
   CreatedBy,
   CreatedAt,
   LastChangedBy,
   LastChangedAt,
   /* Associations */
   _Agency,
   _Bookings : redirected to composition child ZDXC_SHB_M_BOOKING_APPROVER,
   _Currency,
   _Customer,
   _Status
}

