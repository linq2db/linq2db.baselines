-- Firebird.3 Firebird3
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
			"UpdatedEntities" "c_2",
			"NewEntities" "t_1"
		WHERE
			"t_1"."id" = "c_2"."id" AND "t_1"."id" <> @someId AND
			"UpdatedEntities"."id" = "c_2"."id"
	) * (
		SELECT
			"t_2"."Value1"
		FROM
			"UpdatedEntities" "c_3",
			"NewEntities" "t_2"
		WHERE
			"t_2"."id" = "c_3"."id" AND "t_2"."id" <> @someId AND
			"UpdatedEntities"."id" = "c_3"."id"
	)) * CAST(@int1 AS Int),
	"Value2" = ((
		SELECT
			"c_4"."Value2"
		FROM
			"UpdatedEntities" "c_4",
			"NewEntities" "t_3"
		WHERE
			"t_3"."id" = "c_4"."id" AND "t_3"."id" <> @someId AND
			"UpdatedEntities"."id" = "c_4"."id"
	) * (
		SELECT
			"t_4"."Value2"
		FROM
			"UpdatedEntities" "c_5",
			"NewEntities" "t_4"
		WHERE
			"t_4"."id" = "c_5"."id" AND "t_4"."id" <> @someId AND
			"UpdatedEntities"."id" = "c_5"."id"
	)) * CAST(@int2 AS Int),
	"Value3" = ((
		SELECT
			"c_6"."Value3"
		FROM
			"UpdatedEntities" "c_6",
			"NewEntities" "t_5"
		WHERE
			"t_5"."id" = "c_6"."id" AND "t_5"."id" <> @someId AND
			"UpdatedEntities"."id" = "c_6"."id"
	) * (
		SELECT
			"t_6"."Value3"
		FROM
			"UpdatedEntities" "c_7",
			"NewEntities" "t_6"
		WHERE
			"t_6"."id" = "c_7"."id" AND "t_6"."id" <> @someId AND
			"UpdatedEntities"."id" = "c_7"."id"
	)) * CAST(@int3 AS Int)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"UpdatedEntities" "c_1",
			"NewEntities" "t"
		WHERE
			"t"."id" = "c_1"."id" AND "t"."id" <> @someId AND "UpdatedEntities"."id" = "c_1"."id"
	)

-- Firebird.3 Firebird3

SELECT
	"v"."id",
	"v"."Value1",
	"v"."Value2",
	"v"."Value3"
FROM
	"UpdatedEntities" "v"

