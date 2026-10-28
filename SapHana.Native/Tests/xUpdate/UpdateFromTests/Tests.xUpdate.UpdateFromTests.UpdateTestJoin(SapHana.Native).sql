-- SapHana.Native SapHana
DECLARE @int1 Integer -- Int32
SET     @int1 = 11
DECLARE @someId Integer -- Int32
SET     @someId = 100
DECLARE @int2 Integer -- Int32
SET     @int2 = 22
DECLARE @someId_1 Integer -- Int32
SET     @someId_1 = 100
DECLARE @int3 Integer -- Int32
SET     @int3 = 33
DECLARE @someId_2 Integer -- Int32
SET     @someId_2 = 100
DECLARE @someId_3 Integer -- Int32
SET     @someId_3 = 100

UPDATE
	"UpdatedEntities"
SET
	"Value1" = (
		SELECT
			("c_2"."Value1" * "t_1"."Value1") * :"int1"
		FROM
			"UpdatedEntities" "c_2"
				INNER JOIN "NewEntities" "t_1" ON "t_1"."id" = "c_2"."id"
		WHERE
			"t_1"."id" <> :"someId" AND "UpdatedEntities"."id" = "c_2"."id"
	),
	"Value2" = (
		SELECT
			("c_3"."Value2" * "t_2"."Value2") * :"int2"
		FROM
			"UpdatedEntities" "c_3"
				INNER JOIN "NewEntities" "t_2" ON "t_2"."id" = "c_3"."id"
		WHERE
			"t_2"."id" <> :"someId_1" AND "UpdatedEntities"."id" = "c_3"."id"
	),
	"Value3" = (
		SELECT
			("c_4"."Value3" * "t_3"."Value3") * :"int3"
		FROM
			"UpdatedEntities" "c_4"
				INNER JOIN "NewEntities" "t_3" ON "t_3"."id" = "c_4"."id"
		WHERE
			"t_3"."id" <> :"someId_2" AND "UpdatedEntities"."id" = "c_4"."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"UpdatedEntities" "c_1"
				INNER JOIN "NewEntities" "t" ON "t"."id" = "c_1"."id"
		WHERE
			"t"."id" <> :"someId_3" AND "UpdatedEntities"."id" = "c_1"."id"
	)

-- SapHana.Native SapHana
SELECT
	"v"."id",
	"v"."Value1",
	"v"."Value2",
	"v"."Value3"
FROM
	"UpdatedEntities" "v"

