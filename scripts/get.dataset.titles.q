PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX owl: <http://www.w3.org/2002/07/owl#>
PREFIX dcterms: <http://purl.org/dc/terms/>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>
PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
PREFIX wgs: <http://www.w3.org/2003/01/geo/wgs84_pos#>
PREFIX dbo: <http://dbpedia.org/ontology/>
PREFIX dbp: <http://dbpedia.org/property/>
PREFIX dbr: <http://dbpedia.org/resource/>
PREFIX sdmx: <http://purl.org/linked-data/sdmx#>
PREFIX sdmx-concept: <http://purl.org/linked-data/sdmx/2009/concept#>
PREFIX sdmx-attribute: <http://purl.org/linked-data/sdmx/2009/attribute#>
PREFIX sdmx-dimension: <http://purl.org/linked-data/sdmx/2009/dimension#>
PREFIX sdmx-measure: <http://purl.org/linked-data/sdmx/2009/measure#>
PREFIX qb: <http://purl.org/linked-data/cube#>
PREFIX prov: <http://www.w3.org/ns/prov#>
PREFIX year: <http://reference.data.gov.uk/id/year/>
PREFIX void: <http://rdfs.org/ns/void#>

PREFIX stats: <http://stats.270a.info/vocab#>
PREFIX provenance: <http://stats.270a.info/provenance/>

#USE THESE GRAPHS :)
PREFIX g-analysis: <http://stats.270a.info/graph/analysis>

SELECT ?datasetTitle ?source
WHERE {
    {SERVICE <http://worldbank.270a.info/sparql> {
        SELECT ?datasetTitle ?source
        WHERE {
            ?dataset a qb:DataSet ; dcterms:title ?datasetTitle
            BIND("1" AS ?source)
        }
        ORDER BY LCASE(?datasetTitle)
    }}
    UNION
    {SERVICE <http://transparency.270a.info/sparql> {
        SELECT ?datasetTitle ?source
        WHERE {
            ?dataset a qb:DataSet ; rdfs:label ?datasetTitle
            BIND("2" AS ?source)
        }
        ORDER BY LCASE(?datasetTitle)
    }}
    UNION
    {SERVICE <http://oecd.270a.info/sparql> {
        SELECT ?datasetTitle ?source
        WHERE {
            ?dataset a qb:DataSet ; dcterms:title ?datasetTitle
            BIND("3" AS ?source)
        }
        ORDER BY LCASE(?datasetTitle)
    }}
    UNION
    {SERVICE <http://fao.270a.info/sparql> {
        SELECT ?datasetTitle ?source
        WHERE {
            ?dataset a qb:DataSet ; dcterms:title ?datasetTitle
            BIND("4" AS ?source)
        }
        ORDER BY LCASE(?datasetTitle)
    }}
    UNION
    {SERVICE <http://ecb.270a.info/sparql> {
        SELECT ?datasetTitle ?source
        WHERE {
            ?dataset a qb:DataSet ; dcterms:title ?datasetTitle
            BIND("5" AS ?source)
        }
        ORDER BY LCASE(?datasetTitle)
    }}
    UNION
    {SERVICE <http://imf.270a.info/sparql> {
        SELECT ?datasetTitle ?source
        WHERE {
            ?dataset a qb:DataSet ; dcterms:title ?datasetTitle
            BIND("6" AS ?source)
        }
        ORDER BY LCASE(?datasetTitle)
    }}
}
