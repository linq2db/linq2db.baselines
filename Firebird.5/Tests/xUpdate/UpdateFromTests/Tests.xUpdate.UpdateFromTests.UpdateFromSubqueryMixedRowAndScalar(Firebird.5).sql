-- Firebird.5 Firebird4
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 42

UPDATE
	"UpdatedEntities"
SET
	"Value3" = CAST(@Value3 AS Int),
	"Value1" = (
		SELECT
			(
				SELECT
					"r"."RelatedValue1"
				FROM rdb$database
			)
		FROM
			"UpdateRelation" "r"
		WHERE
			"r"."id" = "UpdatedEntities"."RelationId"
	),
	"Value2" = (
		SELECT
			(
				SELECT
					"r_1"."RelatedValue2"
				FROM rdb$database
			)
		FROM
			"UpdateRelation" "r_1"
		WHERE
			"r_1"."id" = "UpdatedEntities"."RelationId"
	)
WHERE
	"UpdatedEntities"."id" = 1

