BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "UpdatedEntities"
(
	"id"         Int NOT NULL,
	"Value1"     Int NOT NULL,
	"Value2"     Int NOT NULL,
	"Value3"     Int NOT NULL,
	"RelationId" Int     NULL,

	CONSTRAINT "PK_UpdatedEntities" PRIMARY KEY ("id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "UpdatedEntities"
(
	"id",
	"Value1",
	"Value2",
	"Value3",
	"RelationId"
)
VALUES
(0,1,1,3,0),
(1,11,12,13,1),
(2,21,22,23,2),
(3,31,32,33,3)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "NewEntities"
(
	"id"     Int NOT NULL,
	"Value1" Int NOT NULL,
	"Value2" Int NOT NULL,
	"Value3" Int NOT NULL,

	CONSTRAINT "PK_NewEntities" PRIMARY KEY ("id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "NewEntities"
(
	"id",
	"Value1",
	"Value2",
	"Value3"
)
VALUES
(0,0,0,0),
(1,1,1,1),
(2,2,2,2),
(3,3,3,3)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @int1 Integer(4) -- Int32
SET     @int1 = 11
DECLARE @someId Integer(4) -- Int32
SET     @someId = 100
DECLARE @int2 Integer(4) -- Int32
SET     @int2 = 22
DECLARE @int3 Integer(4) -- Int32
SET     @int3 = 33

UPDATE
	"UpdatedEntities"
SET
	"UpdatedEntities"."Value1" = (
		SELECT
			("c_1"."Value1" * "t"."Value1") * @int1
		FROM
			"UpdatedEntities" "c_1"
				INNER JOIN "NewEntities" "t" ON "t"."id" = "c_1"."id"
		WHERE
			"t"."id" <> @someId AND "UpdatedEntities"."id" = "c_1"."id"
	),
	"UpdatedEntities"."Value2" = (
		SELECT
			("c_2"."Value2" * "t_1"."Value2") * @int2
		FROM
			"UpdatedEntities" "c_2"
				INNER JOIN "NewEntities" "t_1" ON "t_1"."id" = "c_2"."id"
		WHERE
			"t_1"."id" <> @someId AND "UpdatedEntities"."id" = "c_2"."id"
	),
	"UpdatedEntities"."Value3" = (
		SELECT
			("c_3"."Value3" * "t_2"."Value3") * @int3
		FROM
			"UpdatedEntities" "c_3"
				INNER JOIN "NewEntities" "t_2" ON "t_2"."id" = "c_3"."id"
		WHERE
			"t_2"."id" <> @someId AND "UpdatedEntities"."id" = "c_3"."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"UpdatedEntities" "c_4"
				INNER JOIN "NewEntities" "t_3" ON "t_3"."id" = "c_4"."id"
		WHERE
			"t_3"."id" <> @someId AND "UpdatedEntities"."id" = "c_4"."id"
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"v"."id",
	"v"."Value1",
	"v"."Value2",
	"v"."Value3"
FROM
	"UpdatedEntities" "v"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "NewEntities"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "UpdatedEntities"

