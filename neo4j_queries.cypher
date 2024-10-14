//-- Query for testing the CollecTRI Neo4j Database
/*
MATCH (tf:TranscriptionFactor)-[r:TranscriptionalRegulation]->(g:Gene)
RETURN tf.name AS TranscriptionFactor,
       g.name AS Gene,
       r.activation_or_inhibition AS RegulationType,
       r.resources AS Resources,
       r.references AS References
*/

//-- Cypher Language (summary)

// Best practices:
//      Link: https://neo4j.com/docs/cypher-manual/current/styleguide/
//      
//      1. Write Cypher clauses always in uppercase for improving readability. Cypher language is not case sensitive.
//      2. It is recommended to create nodes and relationships in separate clauses.
//          for instance:
        CREATE (elaine:Person{name:"Elaine"}), (michael:Person{name:"Michael"})
        CREATE (elaine) -[f:FRIEND]-> (michael)
        RETURN *


//  clause
//      Purpose:


// CREATE clause
//      Purpose: it is used to store nodes and relationships in the graph database.

// MATCH clause
//      Purpose: it is used for searching existing graph patterns stored in the database.        

//  WHERE clause
//      Purpose:

//  AS operator
//      Purpose:


// Query 3.1
CREATE (p:Person{name:'Satish'})

// Query 3.2
CREATE (p:Person{name:'Frodo'})
RETURN p

// Query 3.3
CREATE (elaine:Person{name:'Elaine'}), (michael:Person{name:'Michael'})
CREATE (elaine)-[f:FRIEND]->(michael)
RETURN *

// Query 3.4
CREATE (elaine:Person{name:'Elaine'}), (michael:Person{name:'Michael'})
CREATE (elaine)-[:FRIEND]->(michael)
RETURN *

// Query 3.5
CREATE (ankit)-[f:FRIEND]->(elaine)
RETURN *

// Query 3.6
MATCH (p:Person{name:'Satish'})
RETURN p

// Query 3.7
MATCH (p)
WHERE p:Person AND p.name = 'Satish'
RETURN p

// Query 3.8
MATCH (p:Person)
WHERE p.name = 'Satish' OR p.name = 'Elaine'
RETURN p.name AS person

// Query 3.9
MATCH (satish:Person)
WHERE satish.name = 'Satish'
MATCH (elaine:Person)
WHERE elaine.name = 'Elaine'
RETURN *