BeforeExecute
-- Firebird.3 Firebird3

UPDATE
	"UpdatedEntities"
SET
	"Value1" = (
		SELECT
			"a_Relation_1"."RelatedValue3"
		FROM
			"UpdatedEntities" "v_1"
				INNER JOIN "UpdateRelation" "a_Relation_1" ON "v_1"."RelationId" = "a_Relation_1"."id"
		WHERE
			"a_Relation_1"."RelatedValue1" = 11 AND "UpdatedEntities"."id" = "v_1"."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"UpdatedEntities" "v"
				INNER JOIN "UpdateRelation" "a_Relation" ON "v"."RelationId" = "a_Relation"."id"
		WHERE
			"a_Relation"."RelatedValue1" = 11 AND "UpdatedEntities"."id" = "v"."id"
	)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"v"."Value1"
FROM
	"UpdatedEntities" "v"
		INNER JOIN "UpdateRelation" "a_Relation" ON "v"."RelationId" = "a_Relation"."id"
WHERE
	"a_Relation"."RelatedValue1" = 11
FETCH NEXT 1 ROWS ONLY

