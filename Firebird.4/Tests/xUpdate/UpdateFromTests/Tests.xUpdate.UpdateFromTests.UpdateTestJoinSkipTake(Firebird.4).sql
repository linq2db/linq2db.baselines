BeforeExecute
-- Firebird.4 Firebird4
DECLARE @int1 Integer -- Int32
SET     @int1 = 11
DECLARE @someId Integer -- Int32
SET     @someId = 100
DECLARE @skip Integer -- Int32
SET     @skip = 1
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
			("t4"."Value1" * "t4"."Value1_1") * CAST(@int1 AS Int)
		FROM
			(
				SELECT
					"t3"."Value1",
					"t3"."Value1_1",
					"t3"."id"
				FROM
					(
						SELECT
							"c_2"."id",
							"c_2"."Value1",
							"t_1"."Value1" as "Value1_1"
						FROM
							"UpdatedEntities" "c_2"
								INNER JOIN "NewEntities" "t_1" ON "t_1"."id" = "c_2"."id"
						WHERE
							"t_1"."id" <> @someId
					) "t3"
				ORDER BY
					"t3"."id"
				OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 
			) "t4"
		WHERE
			"UpdatedEntities"."id" = "t4"."id"
	),
	"Value2" = (
		SELECT
			("t6"."Value2" * "t6"."Value2_1") * CAST(@int2 AS Int)
		FROM
			(
				SELECT
					"t5"."Value2",
					"t5"."Value2_1",
					"t5"."id"
				FROM
					(
						SELECT
							"c_3"."id",
							"c_3"."Value2",
							"t_2"."Value2" as "Value2_1"
						FROM
							"UpdatedEntities" "c_3"
								INNER JOIN "NewEntities" "t_2" ON "t_2"."id" = "c_3"."id"
						WHERE
							"t_2"."id" <> @someId
					) "t5"
				ORDER BY
					"t5"."id"
				OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 
			) "t6"
		WHERE
			"UpdatedEntities"."id" = "t6"."id"
	),
	"Value3" = (
		SELECT
			("t8"."Value3" * "t8"."Value3_1") * CAST(@int3 AS Int)
		FROM
			(
				SELECT
					"t7"."Value3",
					"t7"."Value3_1",
					"t7"."id"
				FROM
					(
						SELECT
							"c_4"."id",
							"c_4"."Value3",
							"t_3"."Value3" as "Value3_1"
						FROM
							"UpdatedEntities" "c_4"
								INNER JOIN "NewEntities" "t_3" ON "t_3"."id" = "c_4"."id"
						WHERE
							"t_3"."id" <> @someId
					) "t7"
				ORDER BY
					"t7"."id"
				OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 
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
					(
						SELECT
							"c_1"."id"
						FROM
							"UpdatedEntities" "c_1"
								INNER JOIN "NewEntities" "t" ON "t"."id" = "c_1"."id"
						WHERE
							"t"."id" <> @someId
					) "t1"
				ORDER BY
					"t1"."id"
				OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 
			) "t2"
		WHERE
			"UpdatedEntities"."id" = "t2"."id"
	)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"v"."id",
	"v"."Value1",
	"v"."Value2",
	"v"."Value3"
FROM
	"UpdatedEntities" "v"

