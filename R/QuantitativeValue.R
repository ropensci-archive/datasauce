#' QuantitativeValue 
#'
#' A point value or interval for product characteristics and other purposes. 
#'
#'
#' @param id identifier for the object (URI)
#' @param valueReference (StructuredValue or QuantitativeValue or QualitativeValue or PropertyValue or Enumeration or StructuredValue or QuantitativeValue or QualitativeValue or PropertyValue or Enumeration or StructuredValue or QuantitativeValue or QualitativeValue or PropertyValue or Enumeration type.) A pointer to a secondary value that provides additional information on the original value, e.g. a reference temperature.
#' @param value (Text or StructuredValue or Number or Boolean or Text or StructuredValue or Number or Boolean or Text or StructuredValue or Number or Boolean type.) The value of the quantitative value or property value node.* For [[QuantitativeValue]] and [[MonetaryAmount]], the recommended type for values is 'Number'.* For [[PropertyValue]], it can be 'Text;', 'Number', 'Boolean', or 'StructuredValue'.
#' @param unitText (Text or Text or Text or Text type.) A string or text indicating the unit of measurement. Useful if you cannot provide a standard unit code for<a href='unitCode'>unitCode</a>.
#' @param unitCode (URL or Text or URL or Text or URL or Text or URL or Text type.) The unit of measurement given using the UN/CEFACT Common Code (3 characters) or a URL. Other codes than the UN/CEFACT Common Code may be used with a prefix followed by a colon.
#' @param minValue (Number or Number or Number or Number type.) The lower value of some characteristic or property.
#' @param maxValue (Number or Number or Number or Number type.) The upper value of some characteristic or property.
#' @param additionalProperty (PropertyValue or PropertyValue or PropertyValue or PropertyValue type.) A property-value pair representing an additional characteristics of the entitity, e.g. a product feature or another characteristic for which there is no matching property in schema.org.Note: Publishers should be aware that applications designed to use specific schema.org properties (e.g. http://schema.org/width, http://schema.org/color, http://schema.org/gtin13, ...) will typically expect such data to be provided using those properties, rather than using the generic property/value mechanism.
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
#' @return a list object corresponding to a schema:QuantitativeValue
#'
#' @export

 QuantitativeValue <- function(id = NULL,
valueReference = NULL,
 value = NULL,
 unitText = NULL,
 unitCode = NULL,
 minValue = NULL,
 maxValue = NULL,
 additionalProperty = NULL,
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
type = "QuantitativeValue",
id = id,
valueReference = valueReference,
value = value,
unitText = unitText,
unitCode = unitCode,
minValue = minValue,
maxValue = maxValue,
additionalProperty = additionalProperty,
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
