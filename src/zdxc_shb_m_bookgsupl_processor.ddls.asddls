@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection layer for booking supplement child lowest'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity ZDXC_SHB_M_BOOKGSUPL_PROCESSOR
   as projection on ZDXC_SHB_M_BOOKING_SUPPL
{
    key TravelId,
    key BookingId,
    key BookingSupplementId,
    SupplementId,
    Price,
    CurrencyCode,
    LastChangedAt,
    /* Associations */
   _Booking: redirected to parent ZDXC_SHB_M_BOOKING_PROCESSOR,
   _Travel: redirected to ZDXC_SHB_M_TRAVEL_PROCESSOR,
    _Supplements
}
