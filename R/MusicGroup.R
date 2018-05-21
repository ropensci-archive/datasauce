#' MusicGroup 
#'
#' A musical group, such as a band, an orchestra, or a choir. Can also be a solo musician. 
#'
#'
#' @param id identifier for the object (URI)
#' @param tracks (MusicRecording or MusicRecording type.) A music recording (track)&#x2014;usually a single song.
#' @param track (MusicRecording or ItemList or MusicRecording or ItemList type.) A music recording (track)&#x2014;usually a single song. If an ItemList is given, the list should contain items of type MusicRecording.
#' @param musicGroupMember (Person type.) A member of a music group&#x2014;for example, John, Paul, George, or Ringo.
#' @param genre (URL or Text or URL or Text or URL or Text type.) Genre of the creative work, broadcast channel or group.
#' @param albums (MusicAlbum type.) A collection of music albums.
#' @param album (MusicAlbum type.) A music album.
#' @param vatID (Text or Text type.) The Value-added Tax ID of the organization or person.
#' @param telephone (Text or Text or Text or Text type.) The telephone number.
#' @param taxID (Text or Text type.) The Tax / Fiscal ID of the organization or person, e.g. the TIN in the US or the CIF/NIF in Spain.
#' @param subOrganization (Organization type.) A relationship between two organizations where the first includes the second, e.g., as a subsidiary. See also: the more specific 'department' property.
#' @param sponsor (Person or Organization or Person or Organization or Person or Organization or Person or Organization type.) A person or organization that supports a thing through a pledge, promise, or financial contribution. e.g. a sponsor of a Medical Study or a corporate sponsor of an event.
#' @param serviceArea (Place or GeoShape or AdministrativeArea or Place or GeoShape or AdministrativeArea or Place or GeoShape or AdministrativeArea type.) The geographic area where the service is provided.
#' @param seeks (Demand or Demand type.) A pointer to products or services sought by the organization or person (demand).
#' @param reviews (Review or Review or Review or Review or Review type.) Review of the item.
#' @param review (Review or Review or Review or Review or Review or Review or Review or Review type.) A review of the item.
#' @param publishingPrinciples (URL or CreativeWork or URL or CreativeWork or URL or CreativeWork type.) The publishingPrinciples property indicates (typically via [[URL]]) a document describing the editorial principles of an [[Organization]] (or individual e.g. a [[Person]] writing a blog) that relate to their activities as a publisher, e.g. ethics or diversity policies. When applied to a [[CreativeWork]] (e.g. [[NewsArticle]]) the principles are those of the party primarily responsible for the creation of the [[CreativeWork]].While such policies are most typically expressed in natural language, sometimes related information (e.g. indicating a [[funder]]) can be expressed using schema.org terminology.
#' @param parentOrganization (Organization type.) The larger organization that this organization is a [[subOrganization]] of, if any.
#' @param owns (Product or OwnershipInfo or Product or OwnershipInfo type.) Products owned by the organization or person.
#' @param numberOfEmployees (QuantitativeValue or QuantitativeValue type.) The number of employees in an organization e.g. business.
#' @param naics (Text or Text type.) The North American Industry Classification System (NAICS) code for a particular organization or business person.
#' @param members (Person or Organization or Person or Organization type.) A member of this organization.
#' @param memberOf (ProgramMembership or Organization or ProgramMembership or Organization type.) An Organization (or ProgramMembership) to which this Person or Organization belongs.
#' @param member (Person or Organization or Person or Organization type.) A member of an Organization or a ProgramMembership. Organizations can be members of organizations; ProgramMembership is typically for individuals.
#' @param makesOffer (Offer or Offer type.) A pointer to products or services offered by the organization or person.
#' @param logo (URL or ImageObject or URL or ImageObject or URL or ImageObject or URL or ImageObject or URL or ImageObject type.) An associated logo.
#' @param location (Text or PostalAddress or Place or Text or PostalAddress or Place or Text or PostalAddress or Place type.) The location of for example where the event is happening, an organization is located, or where an action takes place.
#' @param leiCode (Text type.) An organization identifier that uniquely identifies a legal entity as defined in ISO 17442.
#' @param legalName (Text type.) The official name of the organization, e.g. the registered company name.
#' @param isicV4 (Text or Text or Text type.) The International Standard of Industrial Classification of All Economic Activities (ISIC), Revision 4 code for a particular organization, business person, or place.
#' @param hasPOS (Place or Place type.) Points-of-Sales operated by the organization or person.
#' @param hasOfferCatalog (OfferCatalog or OfferCatalog or OfferCatalog type.) Indicates an OfferCatalog listing for this Organization, Person, or Service.
#' @param globalLocationNumber (Text or Text or Text type.) The [Global Location Number](http://www.gs1.org/gln) (GLN, sometimes also referred to as International Location Number or ILN) of the respective organization, person, or place. The GLN is a 13-digit number used to identify parties and physical locations.
#' @param funder (Person or Organization or Person or Organization or Person or Organization or Person or Organization type.) A person or organization that supports (sponsors) something through some kind of financial contribution.
#' @param foundingLocation (Place type.) The place where the Organization was founded.
#' @param foundingDate (Date type.) The date that this organization was founded.
#' @param founders (Person type.) A person who founded this organization.
#' @param founder (Person type.) A person who founded this organization.
#' @param faxNumber (Text or Text or Text or Text type.) The fax number.
#' @param events (Event or Event type.) Upcoming or past events associated with this place or organization.
#' @param event (Event or Event or Event or Event or Event or Event or Event type.) Upcoming or past event associated with this place, organization, or action.
#' @param employees (Person type.) People working for this organization.
#' @param employee (Person type.) Someone working for this organization.
#' @param email (Text or Text or Text type.) Email address.
#' @param duns (Text or Text type.) The Dun & Bradstreet DUNS number for identifying an organization or business person.
#' @param dissolutionDate (Date type.) The date that this organization was dissolved.
#' @param department (Organization type.) A relationship between an organization and a department of that organization, also described as an organization (allowing different urls, logos, opening hours). For example: a store with a pharmacy, or a bakery with a cafe.
#' @param contactPoints (ContactPoint or ContactPoint type.) A contact point for a person or organization.
#' @param contactPoint (ContactPoint or ContactPoint type.) A contact point for a person or organization.
#' @param brand (Organization or Brand or Organization or Brand or Organization or Brand or Organization or Brand type.) The brand(s) associated with a product or service, or the brand(s) maintained by an organization or business person.
#' @param awards (Text or Text or Text or Text type.) Awards won by or for this item.
#' @param award (Text or Text or Text or Text or Text type.) An award won by or for this item.
#' @param areaServed (Text or Place or GeoShape or AdministrativeArea or Text or Place or GeoShape or AdministrativeArea or Text or Place or GeoShape or AdministrativeArea or Text or Place or GeoShape or AdministrativeArea or Text or Place or GeoShape or AdministrativeArea or Text or Place or GeoShape or AdministrativeArea type.) The geographic area where a service or offered item is provided.
#' @param alumni (Person or Person type.) Alumni of an organization.
#' @param aggregateRating (AggregateRating or AggregateRating or AggregateRating or AggregateRating or AggregateRating or AggregateRating or AggregateRating or AggregateRating type.) The overall rating, based on a collection of reviews or ratings, of the item.
#' @param address (Text or PostalAddress or Text or PostalAddress or Text or PostalAddress or Text or PostalAddress or Text or PostalAddress type.) Physical address of the item.
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
#' @return a list object corresponding to a schema:MusicGroup
#'
#' @export

 MusicGroup <- function(id = NULL,
tracks = NULL,
 track = NULL,
 musicGroupMember = NULL,
 genre = NULL,
 albums = NULL,
 album = NULL,
 vatID = NULL,
 telephone = NULL,
 taxID = NULL,
 subOrganization = NULL,
 sponsor = NULL,
 serviceArea = NULL,
 seeks = NULL,
 reviews = NULL,
 review = NULL,
 publishingPrinciples = NULL,
 parentOrganization = NULL,
 owns = NULL,
 numberOfEmployees = NULL,
 naics = NULL,
 members = NULL,
 memberOf = NULL,
 member = NULL,
 makesOffer = NULL,
 logo = NULL,
 location = NULL,
 leiCode = NULL,
 legalName = NULL,
 isicV4 = NULL,
 hasPOS = NULL,
 hasOfferCatalog = NULL,
 globalLocationNumber = NULL,
 funder = NULL,
 foundingLocation = NULL,
 foundingDate = NULL,
 founders = NULL,
 founder = NULL,
 faxNumber = NULL,
 events = NULL,
 event = NULL,
 employees = NULL,
 employee = NULL,
 email = NULL,
 duns = NULL,
 dissolutionDate = NULL,
 department = NULL,
 contactPoints = NULL,
 contactPoint = NULL,
 brand = NULL,
 awards = NULL,
 award = NULL,
 areaServed = NULL,
 alumni = NULL,
 aggregateRating = NULL,
 address = NULL,
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
type = "MusicGroup",
id = id,
tracks = tracks,
track = track,
musicGroupMember = musicGroupMember,
genre = genre,
albums = albums,
album = album,
vatID = vatID,
telephone = telephone,
taxID = taxID,
subOrganization = subOrganization,
sponsor = sponsor,
serviceArea = serviceArea,
seeks = seeks,
reviews = reviews,
review = review,
publishingPrinciples = publishingPrinciples,
parentOrganization = parentOrganization,
owns = owns,
numberOfEmployees = numberOfEmployees,
naics = naics,
members = members,
memberOf = memberOf,
member = member,
makesOffer = makesOffer,
logo = logo,
location = location,
leiCode = leiCode,
legalName = legalName,
isicV4 = isicV4,
hasPOS = hasPOS,
hasOfferCatalog = hasOfferCatalog,
globalLocationNumber = globalLocationNumber,
funder = funder,
foundingLocation = foundingLocation,
foundingDate = foundingDate,
founders = founders,
founder = founder,
faxNumber = faxNumber,
events = events,
event = event,
employees = employees,
employee = employee,
email = email,
duns = duns,
dissolutionDate = dissolutionDate,
department = department,
contactPoints = contactPoints,
contactPoint = contactPoint,
brand = brand,
awards = awards,
award = award,
areaServed = areaServed,
alumni = alumni,
aggregateRating = aggregateRating,
address = address,
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
