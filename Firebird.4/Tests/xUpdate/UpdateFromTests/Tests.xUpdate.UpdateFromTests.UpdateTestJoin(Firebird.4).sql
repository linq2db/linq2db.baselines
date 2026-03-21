-- Firebird.4 Firebird4
DECLARE @someId Integer -- Int32
SET     @someId = 100
DECLARE @int1 Integer -- Int32
SET     @int1 = 11
DECLARE @int2 Integer -- Int32
SET     @int2 = 22
DECLARE @int3 Integer -- Int32
SET     @int3 = 33

UPDATE
	"UpdatedEntities"
SET
	"Value1" = ((
		SELECT
			"c_2"."Value1"
		FROM
			"UpdatedEntities" "c_2"
				INNER JOIN "NewEntities" "t_1" ON "t_1"."id" = "c_2"."id"
		WHERE
			"t_1"."id" <> @someId AND "UpdatedEntities"."id" = "c_2"."id"
	) * (
		SELECT
			"t_2"."Value1"
		FROM
			"UpdatedEntities" "c_3"
				INNER JOIN "NewEntities" "t_2" ON "t_2"."id" = "c_3"."id"
		WHERE
			"t_2"."id" <> @someId AND "UpdatedEntities"."id" = "c_3"."id"
	)) * CAST(@int1 AS Int),
	"Value2" = ((
		SELECT
			"c_4"."Value2"
		FROM
			"UpdatedEntities" "c_4"
				INNER JOIN "NewEntities" "t_3" ON "t_3"."id" = "c_4"."id"
		WHERE
			"t_3"."id" <> @someId AND "UpdatedEntities"."id" = "c_4"."id"
	) * (
		SELECT
			"t_4"."Value2"
		FROM
			"UpdatedEntities" "c_5"
				INNER JOIN "NewEntities" "t_4" ON "t_4"."id" = "c_5"."id"
		WHERE
			"t_4"."id" <> @someId AND "UpdatedEntities"."id" = "c_5"."id"
	)) * CAST(@int2 AS Int),
	"Value3" = ((
		SELECT
			"c_6"."Value3"
		FROM
			"UpdatedEntities" "c_6"
				INNER JOIN "NewEntities" "t_5" ON "t_5"."id" = "c_6"."id"
		WHERE
			"t_5"."id" <> @someId AND "UpdatedEntities"."id" = "c_6"."id"
	) * (
		SELECT
			"t_6"."Value3"
		FROM
			"UpdatedEntities" "c_7"
				INNER JOIN "NewEntities" "t_6" ON "t_6"."id" = "c_7"."id"
		WHERE
			"t_6"."id" <> @someId AND "UpdatedEntities"."id" = "c_7"."id"
	)) * CAST(@int3 AS Int)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"UpdatedEntities" "c_1"
				INNER JOIN "NewEntities" "t" ON "t"."id" = "c_1"."id"
		WHERE
			"t"."id" <> @someId AND "UpdatedEntities"."id" = "c_1"."id"
	)

-- Firebird.4 Firebird4

SELECT
	"v"."id",
	"v"."Value1",
	"v"."Value2",
	"v"."Value3"
FROM
	"UpdatedEntities" "v"

