-- Firebird.5 Firebird4
DECLARE @int1 Integer -- Int32
SET     @int1 = 11
DECLARE @someId Integer -- Int32
SET     @someId = 100
DECLARE @int2 Integer -- Int32
SET     @int2 = 22
DECLARE @int3 Integer -- Int32
SET     @int3 = 33

UPDATE
	"UpdatedEntities"
SET
	"Value1" = (
		SELECT
			("UpdatedEntities"."Value1" * "t_1"."Value1") * CAST(@int1 AS Int)
		FROM
			"UpdatedEntities" "c_2",
			"NewEntities" "t_1"
		WHERE
			"t_1"."id" = "c_2"."id" AND "t_1"."id" <> @someId AND
			"UpdatedEntities"."id" = "c_2"."id"
	),
	"Value2" = (
		SELECT
			("UpdatedEntities"."Value2" * "t_2"."Value2") * CAST(@int2 AS Int)
		FROM
			"UpdatedEntities" "c_3",
			"NewEntities" "t_2"
		WHERE
			"t_2"."id" = "c_3"."id" AND "t_2"."id" <> @someId AND
			"UpdatedEntities"."id" = "c_3"."id"
	),
	"Value3" = (
		SELECT
			("UpdatedEntities"."Value3" * "t_3"."Value3") * CAST(@int3 AS Int)
		FROM
			"UpdatedEntities" "c_4",
			"NewEntities" "t_3"
		WHERE
			"t_3"."id" = "c_4"."id" AND "t_3"."id" <> @someId AND
			"UpdatedEntities"."id" = "c_4"."id"
	)
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

-- Firebird.5 Firebird4

SELECT
	"v"."id",
	"v"."Value1",
	"v"."Value2",
	"v"."Value3"
FROM
	"UpdatedEntities" "v"

