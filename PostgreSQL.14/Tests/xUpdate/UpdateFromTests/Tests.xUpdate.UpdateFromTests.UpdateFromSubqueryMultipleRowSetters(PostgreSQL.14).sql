-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

UPDATE
	"UpdatedEntities"
SET
	("Value1", "Value2") = (r."RelatedValue1", r."RelatedValue2"),
	("Value3", "RelationId") = (r."RelatedValue3", r.id)
FROM
	"UpdatedEntities" u
		LEFT JOIN "UpdateRelation" r ON r.id = u."RelationId"
WHERE
	u.id = 1 AND "UpdatedEntities".id = u.id

