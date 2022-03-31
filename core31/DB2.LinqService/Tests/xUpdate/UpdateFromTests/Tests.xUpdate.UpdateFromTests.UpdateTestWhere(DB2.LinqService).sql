﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "UpdatedEntities"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "UpdatedEntities"
		(
			"id"         Int NOT NULL,
			"Value1"     Int NOT NULL,
			"Value2"     Int NOT NULL,
			"Value3"     Int NOT NULL,
			"RelationId" Int     NULL,

			CONSTRAINT "PK_UpdatedEntities" PRIMARY KEY ("id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 0
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 1
DECLARE @Value3 Integer(4) -- Int32
SET     @Value3 = 3
DECLARE @RelationId Integer(4) -- Int32
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
	@id,
	@Value1,
	@Value2,
	@Value3,
	@RelationId
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 1
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 11
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 12
DECLARE @Value3 Integer(4) -- Int32
SET     @Value3 = 13
DECLARE @RelationId Integer(4) -- Int32
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
	@id,
	@Value1,
	@Value2,
	@Value3,
	@RelationId
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 2
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 21
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 22
DECLARE @Value3 Integer(4) -- Int32
SET     @Value3 = 23
DECLARE @RelationId Integer(4) -- Int32
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
	@id,
	@Value1,
	@Value2,
	@Value3,
	@RelationId
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 3
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 31
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 32
DECLARE @Value3 Integer(4) -- Int32
SET     @Value3 = 33
DECLARE @RelationId Integer(4) -- Int32
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
	@id,
	@Value1,
	@Value2,
	@Value3,
	@RelationId
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "NewEntities"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "NewEntities"
		(
			"id"     Int NOT NULL,
			"Value1" Int NOT NULL,
			"Value2" Int NOT NULL,
			"Value3" Int NOT NULL,

			CONSTRAINT "PK_NewEntities" PRIMARY KEY ("id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 0
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 0
DECLARE @Value3 Integer(4) -- Int32
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
	@id,
	@Value1,
	@Value2,
	@Value3
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 1
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 1
DECLARE @Value3 Integer(4) -- Int32
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
	@id,
	@Value1,
	@Value2,
	@Value3
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 2
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 2
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 2
DECLARE @Value3 Integer(4) -- Int32
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
	@id,
	@Value1,
	@Value2,
	@Value3
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 3
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 3
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 3
DECLARE @Value3 Integer(4) -- Int32
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
	@id,
	@Value1,
	@Value2,
	@Value3
)

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
			"UpdatedEntities" "c_1",
			"NewEntities" "t"
		WHERE
			"t"."id" = "c_1"."id" AND "t"."id" <> @someId AND "UpdatedEntities"."id" = "c_1"."id"
	),
	"UpdatedEntities"."Value2" = (
		SELECT
			("c_2"."Value2" * "t_1"."Value2") * @int2
		FROM
			"UpdatedEntities" "c_2",
			"NewEntities" "t_1"
		WHERE
			"t_1"."id" = "c_2"."id" AND "t_1"."id" <> @someId AND
			"UpdatedEntities"."id" = "c_2"."id"
	),
	"UpdatedEntities"."Value3" = (
		SELECT
			("c_3"."Value3" * "t_2"."Value3") * @int3
		FROM
			"UpdatedEntities" "c_3",
			"NewEntities" "t_2"
		WHERE
			"t_2"."id" = "c_3"."id" AND "t_2"."id" <> @someId AND
			"UpdatedEntities"."id" = "c_3"."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"UpdatedEntities" "c_4",
			"NewEntities" "t_3"
		WHERE
			"t_3"."id" = "c_4"."id" AND "t_3"."id" <> @someId AND
			"UpdatedEntities"."id" = "c_4"."id"
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

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "NewEntities"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "UpdatedEntities"';
END

