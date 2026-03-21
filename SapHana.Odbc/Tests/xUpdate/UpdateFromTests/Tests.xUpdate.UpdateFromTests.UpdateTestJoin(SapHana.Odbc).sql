-- SapHana.Odbc SapHanaOdbc
DECLARE @someId Int -- Int32
SET     @someId = 100
DECLARE @someId Int -- Int32
SET     @someId = 100
DECLARE @int1 Int -- Int32
SET     @int1 = 11
DECLARE @someId Int -- Int32
SET     @someId = 100
DECLARE @someId Int -- Int32
SET     @someId = 100
DECLARE @int2 Int -- Int32
SET     @int2 = 22
DECLARE @someId Int -- Int32
SET     @someId = 100
DECLARE @someId Int -- Int32
SET     @someId = 100
DECLARE @int3 Int -- Int32
SET     @int3 = 33
DECLARE @someId Int -- Int32
SET     @someId = 100

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
			"t_1"."id" <> ? AND "UpdatedEntities"."id" = "c_2"."id"
	) * (
		SELECT
			"t_2"."Value1"
		FROM
			"UpdatedEntities" "c_3"
				INNER JOIN "NewEntities" "t_2" ON "t_2"."id" = "c_3"."id"
		WHERE
			"t_2"."id" <> ? AND "UpdatedEntities"."id" = "c_3"."id"
	)) * ?,
	"Value2" = ((
		SELECT
			"c_4"."Value2"
		FROM
			"UpdatedEntities" "c_4"
				INNER JOIN "NewEntities" "t_3" ON "t_3"."id" = "c_4"."id"
		WHERE
			"t_3"."id" <> ? AND "UpdatedEntities"."id" = "c_4"."id"
	) * (
		SELECT
			"t_4"."Value2"
		FROM
			"UpdatedEntities" "c_5"
				INNER JOIN "NewEntities" "t_4" ON "t_4"."id" = "c_5"."id"
		WHERE
			"t_4"."id" <> ? AND "UpdatedEntities"."id" = "c_5"."id"
	)) * ?,
	"Value3" = ((
		SELECT
			"c_6"."Value3"
		FROM
			"UpdatedEntities" "c_6"
				INNER JOIN "NewEntities" "t_5" ON "t_5"."id" = "c_6"."id"
		WHERE
			"t_5"."id" <> ? AND "UpdatedEntities"."id" = "c_6"."id"
	) * (
		SELECT
			"t_6"."Value3"
		FROM
			"UpdatedEntities" "c_7"
				INNER JOIN "NewEntities" "t_6" ON "t_6"."id" = "c_7"."id"
		WHERE
			"t_6"."id" <> ? AND "UpdatedEntities"."id" = "c_7"."id"
	)) * ?
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"UpdatedEntities" "c_1"
				INNER JOIN "NewEntities" "t" ON "t"."id" = "c_1"."id"
		WHERE
			"t"."id" <> ? AND "UpdatedEntities"."id" = "c_1"."id"
	)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"v"."id",
	"v"."Value1",
	"v"."Value2",
	"v"."Value3"
FROM
	"UpdatedEntities" "v"

