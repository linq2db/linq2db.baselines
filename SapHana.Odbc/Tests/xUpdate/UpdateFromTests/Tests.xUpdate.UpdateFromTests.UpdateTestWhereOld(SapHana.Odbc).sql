BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @int1 Int -- Int32
SET     @int1 = 11
DECLARE @someId Int -- Int32
SET     @someId = 100
DECLARE @int2 Int -- Int32
SET     @int2 = 22
DECLARE @someId Int -- Int32
SET     @someId = 100
DECLARE @int3 Int -- Int32
SET     @int3 = 33
DECLARE @someId Int -- Int32
SET     @someId = 100
DECLARE @someId Int -- Int32
SET     @someId = 100

UPDATE
	"UpdatedEntities"
SET
	"Value1" = (
		SELECT
			("UpdatedEntities"."Value1" * "t_1"."Value1") * ?
		FROM
			"UpdatedEntities" "c_2"
				CROSS JOIN "NewEntities" "t_1"
		WHERE
			"t_1"."id" = "c_2"."id" AND "t_1"."id" <> ? AND "UpdatedEntities"."id" = "c_2"."id"
	),
	"Value2" = (
		SELECT
			("UpdatedEntities"."Value2" * "t_2"."Value2") * ?
		FROM
			"UpdatedEntities" "c_3"
				CROSS JOIN "NewEntities" "t_2"
		WHERE
			"t_2"."id" = "c_3"."id" AND "t_2"."id" <> ? AND "UpdatedEntities"."id" = "c_3"."id"
	),
	"Value3" = (
		SELECT
			("UpdatedEntities"."Value3" * "t_3"."Value3") * ?
		FROM
			"UpdatedEntities" "c_4"
				CROSS JOIN "NewEntities" "t_3"
		WHERE
			"t_3"."id" = "c_4"."id" AND "t_3"."id" <> ? AND "UpdatedEntities"."id" = "c_4"."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"UpdatedEntities" "c_1"
				CROSS JOIN "NewEntities" "t"
		WHERE
			"t"."id" = "c_1"."id" AND "t"."id" <> ? AND "UpdatedEntities"."id" = "c_1"."id"
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"v"."id",
	"v"."Value1",
	"v"."Value2",
	"v"."Value3"
FROM
	"UpdatedEntities" "v"

