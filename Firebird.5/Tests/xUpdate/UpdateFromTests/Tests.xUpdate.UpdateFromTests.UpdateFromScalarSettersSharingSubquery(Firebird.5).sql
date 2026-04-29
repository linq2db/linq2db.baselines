-- Firebird.5 Firebird4

UPDATE
	"NewEntities"
SET
	"Value1" = (
		SELECT
			"t2"."Value1"
		FROM
			"NewEntities" "u1_1"
				LEFT JOIN LATERAL (
					SELECT
						"n2"."Value1"
					FROM
						(
							SELECT
								"u1_1"."Value3" + 10 as "row_1"
							FROM rdb$database
						) "t1"
							LEFT JOIN "UpdatedEntities" "n2" ON "n2"."id" = "t1"."row_1"
							INNER JOIN "UpdateRelation" "n3" ON "n2"."RelationId" = "n3"."id"
					WHERE
						"n3"."RelatedValue3" < 1000
				) "t2" ON 1=1
		WHERE
			"u1_1"."id" = 7 AND "NewEntities"."id" = "u1_1"."id"
	),
	"Value2" = (
		SELECT
			"t4"."RelatedValue2"
		FROM
			"NewEntities" "u1_2"
				LEFT JOIN LATERAL (
					SELECT
						"n3_1"."RelatedValue2"
					FROM
						(
							SELECT
								"u1_2"."Value3" + 10 as "row_1"
							FROM rdb$database
						) "t3"
							LEFT JOIN "UpdatedEntities" "n2_1" ON "n2_1"."id" = "t3"."row_1"
							INNER JOIN "UpdateRelation" "n3_1" ON "n2_1"."RelationId" = "n3_1"."id"
					WHERE
						"n3_1"."RelatedValue3" < 1000
				) "t4" ON 1=1
		WHERE
			"u1_2"."id" = 7 AND "NewEntities"."id" = "u1_2"."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"NewEntities" "u1"
		WHERE
			"u1"."id" = 7 AND "NewEntities"."id" = "u1"."id"
	)

