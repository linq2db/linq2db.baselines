BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "UpdatedEntities"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "UpdatedEntities"
(
	"id"         Integer NOT NULL,
	"Value1"     Integer NOT NULL,
	"Value2"     Integer NOT NULL,
	"Value3"     Integer NOT NULL,
	"RelationId" Integer     NULL,

	PRIMARY KEY ("id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = 0
DECLARE @Value1  -- Int32
SET     @Value1 = 1
DECLARE @Value2  -- Int32
SET     @Value2 = 1
DECLARE @Value3  -- Int32
SET     @Value3 = 3
DECLARE @RelationId  -- Int32
SET     @RelationId = 0

INSERT INTO "UpdatedEntities"
(
	"id",
	"Value1",
	"Value2",
	"Value3",
	"RelationId"
)
VALUES
(
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = 1
DECLARE @Value1  -- Int32
SET     @Value1 = 11
DECLARE @Value2  -- Int32
SET     @Value2 = 12
DECLARE @Value3  -- Int32
SET     @Value3 = 13
DECLARE @RelationId  -- Int32
SET     @RelationId = 1

INSERT INTO "UpdatedEntities"
(
	"id",
	"Value1",
	"Value2",
	"Value3",
	"RelationId"
)
VALUES
(
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = 2
DECLARE @Value1  -- Int32
SET     @Value1 = 21
DECLARE @Value2  -- Int32
SET     @Value2 = 22
DECLARE @Value3  -- Int32
SET     @Value3 = 23
DECLARE @RelationId  -- Int32
SET     @RelationId = 2

INSERT INTO "UpdatedEntities"
(
	"id",
	"Value1",
	"Value2",
	"Value3",
	"RelationId"
)
VALUES
(
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = 3
DECLARE @Value1  -- Int32
SET     @Value1 = 31
DECLARE @Value2  -- Int32
SET     @Value2 = 32
DECLARE @Value3  -- Int32
SET     @Value3 = 33
DECLARE @RelationId  -- Int32
SET     @RelationId = 3

INSERT INTO "UpdatedEntities"
(
	"id",
	"Value1",
	"Value2",
	"Value3",
	"RelationId"
)
VALUES
(
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "NewEntities"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "NewEntities"
(
	"id"     Integer NOT NULL,
	"Value1" Integer NOT NULL,
	"Value2" Integer NOT NULL,
	"Value3" Integer NOT NULL,

	PRIMARY KEY ("id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = 0
DECLARE @Value1  -- Int32
SET     @Value1 = 0
DECLARE @Value2  -- Int32
SET     @Value2 = 0
DECLARE @Value3  -- Int32
SET     @Value3 = 0

INSERT INTO "NewEntities"
(
	"id",
	"Value1",
	"Value2",
	"Value3"
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = 1
DECLARE @Value1  -- Int32
SET     @Value1 = 1
DECLARE @Value2  -- Int32
SET     @Value2 = 1
DECLARE @Value3  -- Int32
SET     @Value3 = 1

INSERT INTO "NewEntities"
(
	"id",
	"Value1",
	"Value2",
	"Value3"
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = 2
DECLARE @Value1  -- Int32
SET     @Value1 = 2
DECLARE @Value2  -- Int32
SET     @Value2 = 2
DECLARE @Value3  -- Int32
SET     @Value3 = 2

INSERT INTO "NewEntities"
(
	"id",
	"Value1",
	"Value2",
	"Value3"
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = 3
DECLARE @Value1  -- Int32
SET     @Value1 = 3
DECLARE @Value2  -- Int32
SET     @Value2 = 3
DECLARE @Value3  -- Int32
SET     @Value3 = 3

INSERT INTO "NewEntities"
(
	"id",
	"Value1",
	"Value2",
	"Value3"
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @int1  -- Int32
SET     @int1 = 11
DECLARE @someId  -- Int32
SET     @someId = 100
DECLARE @take  -- Int32
SET     @take = 2
DECLARE @skip  -- Int32
SET     @skip = 1
DECLARE @int2  -- Int32
SET     @int2 = 22
DECLARE @someId_1  -- Int32
SET     @someId_1 = 100
DECLARE @take_1  -- Int32
SET     @take_1 = 2
DECLARE @skip_1  -- Int32
SET     @skip_1 = 1
DECLARE @int3  -- Int32
SET     @int3 = 33
DECLARE @someId_2  -- Int32
SET     @someId_2 = 100
DECLARE @take_2  -- Int32
SET     @take_2 = 2
DECLARE @skip_2  -- Int32
SET     @skip_2 = 1
DECLARE @someId_3  -- Int32
SET     @someId_3 = 100
DECLARE @take_3  -- Int32
SET     @take_3 = 2
DECLARE @skip_3  -- Int32
SET     @skip_3 = 1

UPDATE
	"UpdatedEntities"
SET
	"UpdatedEntities"."Value1" = (
		SELECT
			("t1"."Value1" * "t1"."Value1_1") * ?
		FROM
			(
				SELECT
					"c_1"."Value1",
					"t"."Value1" as "Value1_1",
					"c_1"."Value2",
					"t"."Value2" as "Value2_1",
					"c_1"."Value3",
					"t"."Value3" as "Value3_1",
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
	),
	"UpdatedEntities"."Value2" = (
		SELECT
			("t2"."Value2" * "t2"."Value2_1") * ?
		FROM
			(
				SELECT
					"c_2"."Value1",
					"t_1"."Value1" as "Value1_1",
					"c_2"."Value2",
					"t_1"."Value2" as "Value2_1",
					"c_2"."Value3",
					"t_1"."Value3" as "Value3_1",
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
	),
	"UpdatedEntities"."Value3" = (
		SELECT
			("t3"."Value3" * "t3"."Value3_1") * ?
		FROM
			(
				SELECT
					"c_3"."Value1",
					"t_2"."Value1" as "Value1_1",
					"c_3"."Value2",
					"t_2"."Value2" as "Value2_1",
					"c_3"."Value3",
					"t_2"."Value3" as "Value3_1",
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
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					"c_4"."Value1",
					"t_3"."Value1" as "Value1_1",
					"c_4"."Value2",
					"t_3"."Value2" as "Value2_1",
					"c_4"."Value3",
					"t_3"."Value3" as "Value3_1",
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

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "NewEntities"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "UpdatedEntities"

