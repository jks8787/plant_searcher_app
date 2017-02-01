module AlgoliaSearchable
  include AlgoliaSearch
  extend ActiveSupport::Concern

  SEARCH_INDEX_SETTINGS = {
     auto_index: false,
     auto_remove: false,
     id: :search_id,
     if: :search_indexable?,
     index_name: "plants", # checkout out the index at https://www.algolia.com/explorer
     per_environment: true, # this means you will have a "plant_development" index when you run one of your rake tasks!
     sanitize: true
   }

   # attributes accessible on models
   SEARCH_ATTRIBUTES = [
     :name,
     :symbol
   ]

   # https://www.algolia.com/doc/api-client/ruby/parameters#attributestoindex
   SEARCH_ATTRIBUTES_TO_INDEX = [
     'name',
     'symbol'
   ]

   # https://www.algolia.com/doc/api-client/ruby/parameters#attributestoretrieve
   SEARCH_ATTRIBUTES_TO_RETRIEVE = [
     'name',
     'symbol'
   ]

   # https://www.algolia.com/doc/api-client/ruby/parameters#unretrievableattributes
   SEARCH_TYPE_TOLERANCE_DISABLED = [
     'symbol',
   ]

  included do
    algoliasearch AlgoliaSearchable::SEARCH_INDEX_SETTINGS do
      attribute AlgoliaSearchable::SEARCH_ATTRIBUTES
      attributesToIndex AlgoliaSearchable::SEARCH_ATTRIBUTES_TO_INDEX
      attributesToRetrieve AlgoliaSearchable::SEARCH_ATTRIBUTES_TO_RETRIEVE
    end
  end

  def search_id
    "Plant_#{id}"
  end

  def search_indexable?
    # only add to the index records which have a name and a symbol and an id
    name && symbol && id ? true : false
  end
end
