#' Offer 
#'
#' An offer to transfer some rights to an item or to provide a service — for example, an offer to sell tickets to an event, to rent the DVD of a movie, to stream a TV show over the internet, to repair a motorcycle, or to loan a book.For [GTIN](http://www.gs1.org/barcodes/technical/idkeys/gtin)-related fields, see [Check Digit calculator](http://www.gs1.org/barcodes/support/check_digit_calculator) and [validation guide](http://www.gs1us.org/resources/standards/gtin-validation-guide) from [GS1](http://www.gs1.org/). 
#'
#'
#' @param id identifier for the object (URI)
#' @param warranty (WarrantyPromise or WarrantyPromise type.) The warranty promise(s) included in the offer.
#' @param validThrough (DateTime or DateTime or DateTime or DateTime or DateTime or DateTime or DateTime type.) The date after when the item is not valid. For example the end of an offer, salary period, or a period of opening hours.
#' @param validFrom (DateTime or DateTime or DateTime or DateTime or DateTime or DateTime or DateTime type.) The date when the item becomes valid.
#' @param sku (Text or Text or Text type.) The Stock Keeping Unit (SKU), i.e. a merchant-specific identifier for a product or service, or the product to which the offer refers.
#' @param serialNumber (Text or Text or Text type.) The serial number or any alphanumeric identifier of a particular product. When attached to an offer, it is a shortcut for the serial number of the product included in the offer.
#' @param seller (Person or Organization or Person or Organization or Person or Organization or Person or Organization or Person or Organization type.) An entity which offers (sells / leases / lends / loans) the services / goods.  A seller may also be a provider.
#' @param reviews (Review or Review or Review or Review or Review type.) Review of the item.
#' @param review (Review or Review or Review or Review or Review or Review or Review or Review type.) A review of the item.
#' @param priceValidUntil (Date type.) The date after which the price is no longer available.
#' @param priceSpecification (PriceSpecification or PriceSpecification or PriceSpecification type.) One or more detailed price specifications, indicating the unit price and delivery or payment charges.
#' @param priceCurrency (Text or Text or Text or Text type.) The currency of the price, or a price component when attached to [[PriceSpecification]] and its subtypes.Use standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217) e.g. "USD"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies e.g. "BTC"; well known names for [Local Exchange Tradings Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types e.g. "Ithaca HOUR".
#' @param price (Text or Number or Text or Number or Text or Number type.) The offer price of a product, or of a price component when attached to PriceSpecification and its subtypes.Usage guidelines:* Use the [[priceCurrency]] property (with standard formats: [ISO 4217 currency format](http://en.wikipedia.org/wiki/ISO_4217) e.g. "USD"; [Ticker symbol](https://en.wikipedia.org/wiki/List_of_cryptocurrencies) for cryptocurrencies e.g. "BTC"; well known names for [Local Exchange Tradings Systems](https://en.wikipedia.org/wiki/Local_exchange_trading_system) (LETS) and other currency types e.g. "Ithaca HOUR") instead of including [ambiguous symbols](http://en.wikipedia.org/wiki/Dollar_sign#Currencies_that_use_the_dollar_or_peso_sign) such as '$' in the value.* Use '.' (Unicode 'FULL STOP' (U+002E)) rather than ',' to indicate a decimal point. Avoid using these symbols as a readability separator.* Note that both [RDFa](http://www.w3.org/TR/xhtml-rdfa-primer/#using-the-content-attribute) and Microdata syntax allow the use of a "content=" attribute for publishing simple machine-readable values alongside more human-friendly formatting.* Use values from 0123456789 (Unicode 'DIGIT ZERO' (U+0030) to 'DIGIT NINE' (U+0039)) rather than superficially similiar Unicode symbols.
#' @param offeredBy (Person or Organization type.) A pointer to the organization or person making the offer.
#' @param mpn (Text or Text or Text type.) The Manufacturer Part Number (MPN) of the product, or the product to which the offer refers.
#' @param itemOffered (Service or Product or Service or Product type.) The item being offered.
#' @param itemCondition (OfferItemCondition or OfferItemCondition or OfferItemCondition type.) A predefined value from OfferItemCondition or a textual description of the condition of the product or service, or the products or services included in the offer.
#' @param inventoryLevel (QuantitativeValue or QuantitativeValue or QuantitativeValue type.) The current approximate inventory level for the item or items.
#' @param ineligibleRegion (Text or Place or GeoShape or Text or Place or GeoShape or Text or Place or GeoShape type.) The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is not valid, e.g. a region where the transaction is not allowed.See also [[eligibleRegion]].
#' @param includesObject (TypeAndQuantityNode or TypeAndQuantityNode type.) This links to a node or nodes indicating the exact quantity of the products included in the offer.
#' @param gtin8 (Text or Text or Text type.) The [GTIN-8](http://apps.gs1.org/GDD/glossary/Pages/GTIN-8.aspx) code of the product, or the product to which the offer refers. This code is also known as EAN/UCC-8 or 8-digit EAN. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
#' @param gtin14 (Text or Text or Text type.) The [GTIN-14](http://apps.gs1.org/GDD/glossary/Pages/GTIN-14.aspx) code of the product, or the product to which the offer refers. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
#' @param gtin13 (Text or Text or Text type.) The [GTIN-13](http://apps.gs1.org/GDD/glossary/Pages/GTIN-13.aspx) code of the product, or the product to which the offer refers. This is equivalent to 13-digit ISBN codes and EAN UCC-13. Former 12-digit UPC codes can be converted into a GTIN-13 code by simply adding a preceeding zero. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
#' @param gtin12 (Text or Text or Text type.) The [GTIN-12](http://apps.gs1.org/GDD/glossary/Pages/GTIN-12.aspx) code of the product, or the product to which the offer refers. The GTIN-12 is the 12-digit GS1 Identification Key composed of a U.P.C. Company Prefix, Item Reference, and Check Digit used to identify trade items. See [GS1 GTIN Summary](http://www.gs1.org/barcodes/technical/idkeys/gtin) for more details.
#' @param eligibleTransactionVolume (PriceSpecification or PriceSpecification or PriceSpecification type.) The transaction volume, in a monetary unit, for which the offer or price specification is valid, e.g. for indicating a minimal purchasing volume, to express free shipping above a certain order volume, or to limit the acceptance of credit cards to purchases to a certain minimal amount.
#' @param eligibleRegion (Text or Place or GeoShape or Text or Place or GeoShape or Text or Place or GeoShape type.) The ISO 3166-1 (ISO 3166-1 alpha-2) or ISO 3166-2 code, the place, or the GeoShape for the geo-political region(s) for which the offer or delivery charge specification is valid.See also [[ineligibleRegion]].
#' @param eligibleQuantity (QuantitativeValue or QuantitativeValue or QuantitativeValue type.) The interval and unit of measurement of ordering quantities for which the offer or price specification is valid. This allows e.g. specifying that a certain freight charge is valid only for a certain quantity.
#' @param eligibleDuration (QuantitativeValue or QuantitativeValue type.) The duration for which the given offer is valid.
#' @param eligibleCustomerType (BusinessEntityType or BusinessEntityType type.) The type(s) of customers for which the given offer is valid.
#' @param deliveryLeadTime (QuantitativeValue or QuantitativeValue type.) The typical delay between the receipt of the order and the goods either leaving the warehouse or being prepared for pickup, in case the delivery method is on site pickup.
#' @param category (Thing or Text or Thing or Text or Thing or Text or Thing or Text type.) A category for the item. Greater signs or slashes can be used to informally indicate a category hierarchy.
#' @param businessFunction (BusinessFunction or BusinessFunction or BusinessFunction type.) The business function (e.g. sell, lease, repair, dispose) of the offer or component of a bundle (TypeAndQuantityNode). The default is http://purl.org/goodrelations/v1#Sell.
#' @param availableDeliveryMethod (DeliveryMethod or DeliveryMethod type.) The delivery method(s) available for this offer.
#' @param availableAtOrFrom (Place or Place type.) The place(s) from which the offer can be obtained (e.g. store locations).
#' @param availabilityStarts (DateTime or DateTime type.) The beginning of the availability of the product or service included in the offer.
#' @param availabilityEnds (DateTime or DateTime type.) The end of the availability of the product or service included in the offer.
#' @param availability (ItemAvailability or ItemAvailability type.) The availability of this item&#x2014;for example In stock, Out of stock, Pre-order, etc.
#' @param areaServed (Text or Place or GeoShape or AdministrativeArea or Text or Place or GeoShape or AdministrativeArea or Text or Place or GeoShape or AdministrativeArea or Text or Place or GeoShape or AdministrativeArea or Text or Place or GeoShape or AdministrativeArea or Text or Place or GeoShape or AdministrativeArea type.) The geographic area where a service or offered item is provided.
#' @param aggregateRating (AggregateRating or AggregateRating or AggregateRating or AggregateRating or AggregateRating or AggregateRating or AggregateRating or AggregateRating type.) The overall rating, based on a collection of reviews or ratings, of the item.
#' @param advanceBookingRequirement (QuantitativeValue or QuantitativeValue type.) The amount of time that is required between accepting the offer and the actual usage of the resource or service.
#' @param addOn (Offer type.) An additional offer that can only be obtained in combination with the first base offer (e.g. supplements and extensions that are available for a surcharge).
#' @param acceptedPaymentMethod (PaymentMethod or LoanOrCredit or PaymentMethod or LoanOrCredit type.) The payment method(s) accepted by seller for this offer.
#' @param url (URL type.) URL of the item.
#' @param sameAs (URL type.) URL of a reference Web page that unambiguously indicates the item's identity. E.g. the URL of the item's Wikipedia page, Wikidata entry, or official website.
#' @param potentialAction (Action type.) Indicates a potential Action, which describes an idealized action in which this thing would play an 'object' role.
#' @param name (Text type.) The name of the item.
#' @param mainEntityOfPage (URL or CreativeWork type.) Indicates a page (or other CreativeWork) for which this thing is the main entity being described. See [background notes](/docs/datamodel.html#mainEntityBackground) for details.
#' @param image (URL or ImageObject type.) An image of the item. This can be a [[URL]] or a fully described [[ImageObject]].
#' @param identifier (URL or Text or PropertyValue type.) The identifier property represents any kind of identifier for any kind of [[Thing]], such as ISBNs, GTIN codes, UUIDs etc. Schema.org provides dedicated properties for representing many of these, either as textual strings or as URL (URI) links. See [background notes](/docs/datamodel.html#identifierBg) for more details.
#' @param disambiguatingDescription (Text type.) A sub property of description. A short description of the item used to disambiguate from other, similar items. Information from other properties (in particular, name) may be necessary for the description to be useful for disambiguation.
#' @param description (Text type.) A description of the item.
#' @param alternateName (Text type.) An alias for the item.
#' @param additionalType (URL type.) An additional type for the item, typically used for adding more specific types from external vocabularies in microdata syntax. This is a relationship between something and a class that the thing is in. In RDFa syntax, it is better to use the native RDFa syntax - the 'typeof' attribute - for multiple types. Schema.org tools may have only weaker understanding of extra types, in particular those defined externally.
#'
#' @return a list object corresponding to a schema:Offer
#'
#' @export

 Offer <- function(id = NULL,
warranty = NULL,
 validThrough = NULL,
 validFrom = NULL,
 sku = NULL,
 serialNumber = NULL,
 seller = NULL,
 reviews = NULL,
 review = NULL,
 priceValidUntil = NULL,
 priceSpecification = NULL,
 priceCurrency = NULL,
 price = NULL,
 offeredBy = NULL,
 mpn = NULL,
 itemOffered = NULL,
 itemCondition = NULL,
 inventoryLevel = NULL,
 ineligibleRegion = NULL,
 includesObject = NULL,
 gtin8 = NULL,
 gtin14 = NULL,
 gtin13 = NULL,
 gtin12 = NULL,
 eligibleTransactionVolume = NULL,
 eligibleRegion = NULL,
 eligibleQuantity = NULL,
 eligibleDuration = NULL,
 eligibleCustomerType = NULL,
 deliveryLeadTime = NULL,
 category = NULL,
 businessFunction = NULL,
 availableDeliveryMethod = NULL,
 availableAtOrFrom = NULL,
 availabilityStarts = NULL,
 availabilityEnds = NULL,
 availability = NULL,
 areaServed = NULL,
 aggregateRating = NULL,
 advanceBookingRequirement = NULL,
 addOn = NULL,
 acceptedPaymentMethod = NULL,
 url = NULL,
 sameAs = NULL,
 potentialAction = NULL,
 name = NULL,
 mainEntityOfPage = NULL,
 image = NULL,
 identifier = NULL,
 disambiguatingDescription = NULL,
 description = NULL,
 alternateName = NULL,
 additionalType = NULL){ 
Filter(Negate(is.null),
 list(
type = "Offer",
id = id,
warranty = warranty,
validThrough = validThrough,
validFrom = validFrom,
sku = sku,
serialNumber = serialNumber,
seller = seller,
reviews = reviews,
review = review,
priceValidUntil = priceValidUntil,
priceSpecification = priceSpecification,
priceCurrency = priceCurrency,
price = price,
offeredBy = offeredBy,
mpn = mpn,
itemOffered = itemOffered,
itemCondition = itemCondition,
inventoryLevel = inventoryLevel,
ineligibleRegion = ineligibleRegion,
includesObject = includesObject,
gtin8 = gtin8,
gtin14 = gtin14,
gtin13 = gtin13,
gtin12 = gtin12,
eligibleTransactionVolume = eligibleTransactionVolume,
eligibleRegion = eligibleRegion,
eligibleQuantity = eligibleQuantity,
eligibleDuration = eligibleDuration,
eligibleCustomerType = eligibleCustomerType,
deliveryLeadTime = deliveryLeadTime,
category = category,
businessFunction = businessFunction,
availableDeliveryMethod = availableDeliveryMethod,
availableAtOrFrom = availableAtOrFrom,
availabilityStarts = availabilityStarts,
availabilityEnds = availabilityEnds,
availability = availability,
areaServed = areaServed,
aggregateRating = aggregateRating,
advanceBookingRequirement = advanceBookingRequirement,
addOn = addOn,
acceptedPaymentMethod = acceptedPaymentMethod,
url = url,
sameAs = sameAs,
potentialAction = potentialAction,
name = name,
mainEntityOfPage = mainEntityOfPage,
image = image,
identifier = identifier,
disambiguatingDescription = disambiguatingDescription,
description = description,
alternateName = alternateName,
additionalType = additionalType))}
