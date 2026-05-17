-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 42

UPDATE
	"UpdatedEntities"
SET
	("Value1", "Value2") = (r."RelatedValue1", r."RelatedValue2"),
	"Value3" = :Value3
FROM
	"UpdatedEntities" u
		LEFT JOIN "UpdateRelation" r ON r.id = u."RelationId"
WHERE
	u.id = 1 AND "UpdatedEntities".id = u.id

