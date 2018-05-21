#' Action 
#'
#' An action performed by a direct agent and indirect participants upon a direct object. Optionally happens at a location with the help of an inanimate instrument. The execution of the action may produce a result. Specific action sub-type documentation specifies the exact expectation of each argument/role.See also [blog post](http://blog.schema.org/2014/04/announcing-schemaorg-actions.html) and [Actions overview document](http://schema.org/docs/actions.html). 
#'
#'
#' @param id identifier for the object (URI)
#' @param target (EntryPoint type.) Indicates a target EntryPoint for an Action.
#' @param startTime (DateTime or DateTime type.) The startTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to start. For actions that span a period of time, when the action was performed. e.g. John wrote a book from *January* to December.Note that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions.
#' @param result (Thing type.) The result produced in the action. e.g. John wrote *a book*.
#' @param participant (Person or Organization type.) Other co-agents that participated in the action indirectly. e.g. John wrote a book with *Steve*.
#' @param object (Thing type.) The object upon which the action is carried out, whose state is kept intact or changed. Also known as the semantic roles patient, affected or undergoer (which change their state) or theme (which doesn't). e.g. John read *a book*.
#' @param location (Text or PostalAddress or Place or Text or PostalAddress or Place or Text or PostalAddress or Place type.) The location of for example where the event is happening, an organization is located, or where an action takes place.
#' @param instrument (Thing type.) The object that helped the agent perform the action. e.g. John wrote a book with *a pen*.
#' @param error (Thing type.) For failed actions, more information on the cause of the failure.
#' @param endTime (DateTime or DateTime type.) The endTime of something. For a reserved event or service (e.g. FoodEstablishmentReservation), the time that it is expected to end. For actions that span a period of time, when the action was performed. e.g. John wrote a book from January to *December*.Note that Event uses startDate/endDate instead of startTime/endTime, even when describing dates with times. This situation may be clarified in future revisions.
#' @param agent (Person or Organization type.) The direct performer or driver of the action (animate or inanimate). e.g. *John* wrote a book.
#' @param actionStatus (ActionStatusType type.) Indicates the current disposition of the Action.
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
#' @return a list object corresponding to a schema:Action
#'
#' @export

 Action <- function(id = NULL,
target = NULL,
 startTime = NULL,
 result = NULL,
 participant = NULL,
 object = NULL,
 location = NULL,
 instrument = NULL,
 error = NULL,
 endTime = NULL,
 agent = NULL,
 actionStatus = NULL,
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
type = "Action",
id = id,
target = target,
startTime = startTime,
result = result,
participant = participant,
object = object,
location = location,
instrument = instrument,
error = error,
endTime = endTime,
agent = agent,
actionStatus = actionStatus,
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
