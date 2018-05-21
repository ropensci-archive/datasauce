#' ServiceChannel 
#'
#' A means for accessing a service, e.g. a government office location, web site, or phone number. 
#'
#'
#' @param id identifier for the object (URI)
#' @param serviceUrl (URL type.) The website to access the service.
#' @param serviceSmsNumber (ContactPoint type.) The number to access the service by text message.
#' @param servicePostalAddress (PostalAddress type.) The address for accessing the service by mail.
#' @param servicePhone (ContactPoint type.) The phone number to use to access the service.
#' @param serviceLocation (Place type.) The location (e.g. civic structure, local business, etc.) where a person can go to access the service.
#' @param providesService (Service type.) The service provided by this channel.
#' @param processingTime (Duration type.) Estimated processing time for the service using this channel.
#' @param availableLanguage (Text or Language or Text or Language or Text or Language or Text or Language type.) A language someone may use with or at the item, service or place. Please use one of the language codes from the [IETF BCP 47 standard](http://tools.ietf.org/html/bcp47). See also [[inLanguage]]
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
#' @return a list object corresponding to a schema:ServiceChannel
#'
#' @export

 ServiceChannel <- function(id = NULL,
serviceUrl = NULL,
 serviceSmsNumber = NULL,
 servicePostalAddress = NULL,
 servicePhone = NULL,
 serviceLocation = NULL,
 providesService = NULL,
 processingTime = NULL,
 availableLanguage = NULL,
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
type = "ServiceChannel",
id = id,
serviceUrl = serviceUrl,
serviceSmsNumber = serviceSmsNumber,
servicePostalAddress = servicePostalAddress,
servicePhone = servicePhone,
serviceLocation = serviceLocation,
providesService = providesService,
processingTime = processingTime,
availableLanguage = availableLanguage,
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
