BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

UPDATE
	"UpdatedEntities"
SET
	"Value1" = "a_Relation"."RelatedValue3"
FROM
	"UpdatedEntities" v
		LEFT JOIN "UpdateRelation" "a_Relation" ON v."RelationId" = "a_Relation".id
WHERE
	"a_Relation"."RelatedValue1" = 11 AND "UpdatedEntities".id = v.id

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	v."Value1"
FROM
	"UpdatedEntities" v
		LEFT JOIN "UpdateRelation" "a_Relation" ON v."RelationId" = "a_Relation".id
WHERE
	"a_Relation"."RelatedValue1" = 11
LIMIT 1

