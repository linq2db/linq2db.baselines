﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @int1  -- Int32
SET     @int1 = 11
DECLARE @someId  -- Int32
SET     @someId = 100
DECLARE @take  -- Int32
SET     @take = 2
DECLARE @int2  -- Int32
SET     @int2 = 22
DECLARE @someId  -- Int32
SET     @someId = 100
DECLARE @take  -- Int32
SET     @take = 2
DECLARE @int3  -- Int32
SET     @int3 = 33
DECLARE @someId  -- Int32
SET     @someId = 100
DECLARE @take  -- Int32
SET     @take = 2
DECLARE @someId  -- Int32
SET     @someId = 100
DECLARE @take  -- Int32
SET     @take = 2

UPDATE
	"UpdatedEntities"
SET
	"Value1" = (
		SELECT
			("UpdatedEntities"."Value1" * "t2"."Value1") * ?
		FROM
			(
				SELECT
					"t_1"."Value1",
					"c_2"."id"
				FROM
					"UpdatedEntities" "c_2"
						INNER JOIN "NewEntities" "t_1" ON "t_1"."id" = "c_2"."id"
				WHERE
					"t_1"."id" <> ?
				LIMIT ?
			) "t2"
		WHERE
			"UpdatedEntities"."id" = "t2"."id"
	),
	"Value2" = (
		SELECT
			("UpdatedEntities"."Value2" * "t3"."Value2") * ?
		FROM
			(
				SELECT
					"t_2"."Value2",
					"c_3"."id"
				FROM
					"UpdatedEntities" "c_3"
						INNER JOIN "NewEntities" "t_2" ON "t_2"."id" = "c_3"."id"
				WHERE
					"t_2"."id" <> ?
				LIMIT ?
			) "t3"
		WHERE
			"UpdatedEntities"."id" = "t3"."id"
	),
	"Value3" = (
		SELECT
			("UpdatedEntities"."Value3" * "t4"."Value3") * ?
		FROM
			(
				SELECT
					"t_3"."Value3",
					"c_4"."id"
				FROM
					"UpdatedEntities" "c_4"
						INNER JOIN "NewEntities" "t_3" ON "t_3"."id" = "c_4"."id"
				WHERE
					"t_3"."id" <> ?
				LIMIT ?
			) "t4"
		WHERE
			"UpdatedEntities"."id" = "t4"."id"
	)
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
				LIMIT ?
			) "t1"
		WHERE
			"UpdatedEntities"."id" = "t1"."id"
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

