### Exercise 3.2
```
CREATE (person:Person {name:"Edwin Carreño"}), 
       (org:Organization {name:"Uni-Heidelberg"})
CREATE (person)-[work:WORKS_IN {start_work_date:"2024-09-16"}]->(org)
RETURN *
```

### Exercise 3.3
```
CREATE  (city:City {name:"Heidelberg"}), 
        (country:Country {name:"Germany"}),
        (continent:Continent {name:"Europe"})
CREATE  (city)-[islocated:IS_LOCATED_IN]->(country),
        (country)-[ispartof:IS_PART_OF]->(continent)
RETURN *
```

### Exercise 3.4
**inline graph pattern**
```
MATCH (p:Person)
RETURN p.name AS Name
```
**Using WHERE clause to describe the pattern**
```
MATCH (p)
WHERE p:Person
RETURN p.name AS Name
```