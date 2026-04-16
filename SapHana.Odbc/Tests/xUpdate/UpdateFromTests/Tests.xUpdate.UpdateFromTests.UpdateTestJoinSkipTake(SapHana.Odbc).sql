-- SapHana.Odbc SapHanaOdbc
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
DECLARE @int1 Int -- Int32
SET     @int1 = 11
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
DECLARE @int2 Int -- Int32
SET     @int2 = 22
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
DECLARE @int3 Int -- Int32
SET     @int3 = 33
DECLARE @someId Int -- Int32
SET     @someId = 100
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @skip Int -- Int32
SET     @skip = 1

UPDATE
	"UpdatedEntities"
SET
	"Value1" = ((
		SELECT
			"t2"."Value1"
		FROM
			(
				SELECT
					"c_2"."Value1",
					"c_2"."id"
				FROM
					"UpdatedEntities" "c_2"
						INNER JOIN "NewEntities" "t_1" ON "t_1"."id" = "c_2"."id"
				WHERE
					"t_1"."id" <> ?
				ORDER BY
					"c_2"."id"
				LIMIT ? OFFSET ?
			) "t2"
		WHERE
			"UpdatedEntities"."id" = "t2"."id"
	) * (
		SELECT
			"t3"."Value1"
		FROM
			(
				SELECT
					"t_2"."Value1",
					"c_3"."id"
				FROM
					"UpdatedEntities" "c_3"
						INNER JOIN "NewEntities" "t_2" ON "t_2"."id" = "c_3"."id"
				WHERE
					"t_2"."id" <> ?
				ORDER BY
					"c_3"."id"
				LIMIT ? OFFSET ?
			) "t3"
		WHERE
			"UpdatedEntities"."id" = "t3"."id"
	)) * ?,
	"Value2" = ((
		SELECT
			"t4"."Value2"
		FROM
			(
				SELECT
					"c_4"."Value2",
					"c_4"."id"
				FROM
					"UpdatedEntities" "c_4"
						INNER JOIN "NewEntities" "t_3" ON "t_3"."id" = "c_4"."id"
				WHERE
					"t_3"."id" <> ?
				ORDER BY
					"c_4"."id"
				LIMIT ? OFFSET ?
			) "t4"
		WHERE
			"UpdatedEntities"."id" = "t4"."id"
	) * (
		SELECT
			"t5"."Value2"
		FROM
			(
				SELECT
					"t_4"."Value2",
					"c_5"."id"
				FROM
					"UpdatedEntities" "c_5"
						INNER JOIN "NewEntities" "t_4" ON "t_4"."id" = "c_5"."id"
				WHERE
					"t_4"."id" <> ?
				ORDER BY
					"c_5"."id"
				LIMIT ? OFFSET ?
			) "t5"
		WHERE
			"UpdatedEntities"."id" = "t5"."id"
	)) * ?,
	"Value3" = ((
		SELECT
			"t6"."Value3"
		FROM
			(
				SELECT
					"c_6"."Value3",
					"c_6"."id"
				FROM
					"UpdatedEntities" "c_6"
						INNER JOIN "NewEntities" "t_5" ON "t_5"."id" = "c_6"."id"
				WHERE
					"t_5"."id" <> ?
				ORDER BY
					"c_6"."id"
				LIMIT ? OFFSET ?
			) "t6"
		WHERE
			"UpdatedEntities"."id" = "t6"."id"
	) * (
		SELECT
			"t7"."Value3"
		FROM
			(
				SELECT
					"t_6"."Value3",
					"c_7"."id"
				FROM
					"UpdatedEntities" "c_7"
						INNER JOIN "NewEntities" "t_6" ON "t_6"."id" = "c_7"."id"
				WHERE
					"t_6"."id" <> ?
				ORDER BY
					"c_7"."id"
				LIMIT ? OFFSET ?
			) "t7"
		WHERE
			"UpdatedEntities"."id" = "t7"."id"
	)) * ?
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					"c_1"."id"
				FROM
					"UpdatedEntities" "c_1"
						INNER JOIN "NewEntities" "t" ON "t"."id" = "c_1"."id"
				WHERE
					"t"."id" <> ?
				ORDER BY
					"c_1"."id"
				LIMIT ? OFFSET ?
			) "t1"
		WHERE
			"UpdatedEntities"."id" = "t1"."id"
	)

-- SapHana.Odbc SapHanaOdbc

SELECT
	"v"."id",
	"v"."Value1",
	"v"."Value2",
	"v"."Value3"
FROM
	"UpdatedEntities" "v"

