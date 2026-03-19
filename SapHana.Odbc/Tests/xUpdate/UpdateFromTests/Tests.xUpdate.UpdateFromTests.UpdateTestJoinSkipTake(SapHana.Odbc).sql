-- SapHana.Odbc SapHanaOdbc
DECLARE @int1 Int -- Int32
SET     @int1 = 11
DECLARE @someId Int -- Int32
SET     @someId = 100
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @int2 Int -- Int32
SET     @int2 = 22
DECLARE @someId Int -- Int32
SET     @someId = 100
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @int3 Int -- Int32
SET     @int3 = 33
DECLARE @someId Int -- Int32
SET     @someId = 100
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @someId Int -- Int32
SET     @someId = 100
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @skip Int -- Int32
SET     @skip = 1

UPDATE
	"UpdatedEntities"
SET
	"Value1" = (
		SELECT
			("UpdatedEntities"."Value1" * "t4"."Value1") * ?
		FROM
			(
				SELECT
					"t_1"."Value1",
					"t3"."id"
				FROM
					"UpdatedEntities" "t3"
						INNER JOIN "NewEntities" "t_1" ON "t_1"."id" = "t3"."id"
				WHERE
					"t_1"."id" <> ?
				ORDER BY
					"t3"."id"
				LIMIT ? OFFSET ?
			) "t4"
		WHERE
			"UpdatedEntities"."id" = "t4"."id"
	),
	"Value2" = (
		SELECT
			("UpdatedEntities"."Value2" * "t6"."Value2") * ?
		FROM
			(
				SELECT
					"t_2"."Value2",
					"t5"."id"
				FROM
					"UpdatedEntities" "t5"
						INNER JOIN "NewEntities" "t_2" ON "t_2"."id" = "t5"."id"
				WHERE
					"t_2"."id" <> ?
				ORDER BY
					"t5"."id"
				LIMIT ? OFFSET ?
			) "t6"
		WHERE
			"UpdatedEntities"."id" = "t6"."id"
	),
	"Value3" = (
		SELECT
			("UpdatedEntities"."Value3" * "t8"."Value3") * ?
		FROM
			(
				SELECT
					"t_3"."Value3",
					"t7"."id"
				FROM
					"UpdatedEntities" "t7"
						INNER JOIN "NewEntities" "t_3" ON "t_3"."id" = "t7"."id"
				WHERE
					"t_3"."id" <> ?
				ORDER BY
					"t7"."id"
				LIMIT ? OFFSET ?
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
					"t"."id" <> ?
				ORDER BY
					"t1"."id"
				LIMIT ? OFFSET ?
			) "t2"
		WHERE
			"UpdatedEntities"."id" = "t2"."id"
	)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"v"."id",
	"v"."Value1",
	"v"."Value2",
	"v"."Value3"
FROM
	"UpdatedEntities" "v"

