-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

UPDATE
	"UpdatedEntities"
SET
	"Value1" = r."RelatedValue1",
	"Value2" = r."RelatedValue2",
	"Value3" = r."RelatedValue3",
	"RelationId" = r.id
FROM
	"UpdateRelation" r
WHERE
	"UpdatedEntities".id = 1 AND r.id = "UpdatedEntities"."RelationId"

