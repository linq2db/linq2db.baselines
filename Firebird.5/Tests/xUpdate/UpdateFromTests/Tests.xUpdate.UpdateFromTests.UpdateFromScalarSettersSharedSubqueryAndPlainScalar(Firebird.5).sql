-- Firebird.5 Firebird4
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 42

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
	"Value3" = CAST(@Value3 AS Int)
WHERE
	"UpdatedEntities"."id" = 1

