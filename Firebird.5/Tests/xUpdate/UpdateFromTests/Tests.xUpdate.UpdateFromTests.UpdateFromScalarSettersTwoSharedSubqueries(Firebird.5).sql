-- Firebird.5 Firebird4

UPDATE
	"UpdatedEntities"
SET
	"Value1" = (
		SELECT
			"r"."RelatedValue1"
		FROM
			"UpdateRelation" "r"
		WHERE
			"r"."id" = "UpdatedEntities"."RelationId"
	),
	"Value2" = (
		SELECT
			"r_1"."RelatedValue2"
		FROM
			"UpdateRelation" "r_1"
		WHERE
			"r_1"."id" = "UpdatedEntities"."RelationId"
	),
	"Value3" = (
		SELECT
			"r_2"."RelatedValue3"
		FROM
			"UpdateRelation" "r_2"
		WHERE
			"r_2"."id" = "UpdatedEntities"."RelationId"
	),
	"RelationId" = (
		SELECT
			"r_3"."id"
		FROM
			"UpdateRelation" "r_3"
		WHERE
			"r_3"."id" = "UpdatedEntities"."RelationId"
	)
WHERE
	"UpdatedEntities"."id" = 1

