-- Firebird.3 Firebird3
DECLARE @int1 Integer -- Int32
SET     @int1 = 11
DECLARE @someId Integer -- Int32
SET     @someId = 100
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @int2 Integer -- Int32
SET     @int2 = 22
DECLARE @int3 Integer -- Int32
SET     @int3 = 33

UPDATE
	"UpdatedEntities"
SET
	"Value1" = (
		SELECT
			("UpdatedEntities"."Value1" * "t4"."Value1") * CAST(@int1 AS Int)
		FROM
			(
				SELECT
					"t_1"."Value1",
					"t3"."id"
				FROM
					"UpdatedEntities" "t3"
						INNER JOIN "NewEntities" "t_1" ON "t_1"."id" = "t3"."id"
				WHERE
					"t_1"."id" <> @someId
				FETCH NEXT @take ROWS ONLY
			) "t4"
		WHERE
			"UpdatedEntities"."id" = "t4"."id"
	),
	"Value2" = (
		SELECT
			("UpdatedEntities"."Value2" * "t6"."Value2") * CAST(@int2 AS Int)
		FROM
			(
				SELECT
					"t_2"."Value2",
					"t5"."id"
				FROM
					"UpdatedEntities" "t5"
						INNER JOIN "NewEntities" "t_2" ON "t_2"."id" = "t5"."id"
				WHERE
					"t_2"."id" <> @someId
				FETCH NEXT @take ROWS ONLY
			) "t6"
		WHERE
			"UpdatedEntities"."id" = "t6"."id"
	),
	"Value3" = (
		SELECT
			("UpdatedEntities"."Value3" * "t8"."Value3") * CAST(@int3 AS Int)
		FROM
			(
				SELECT
					"t_3"."Value3",
					"t7"."id"
				FROM
					"UpdatedEntities" "t7"
						INNER JOIN "NewEntities" "t_3" ON "t_3"."id" = "t7"."id"
				WHERE
					"t_3"."id" <> @someId
				FETCH NEXT @take ROWS ONLY
			) "t8"
		WHERE
			"UpdatedEntities"."id" = "t8"."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					"t1"."id"
				FROM
					"UpdatedEntities" "t1"
						INNER JOIN "NewEntities" "t" ON "t"."id" = "t1"."id"
				WHERE
					"t"."id" <> @someId
				FETCH NEXT @take ROWS ONLY
			) "t2"
		WHERE
			"UpdatedEntities"."id" = "t2"."id"
	)

-- Firebird.3 Firebird3

SELECT
	"v"."id",
	"v"."Value1",
	"v"."Value2",
	"v"."Value3"
FROM
	"UpdatedEntities" "v"

