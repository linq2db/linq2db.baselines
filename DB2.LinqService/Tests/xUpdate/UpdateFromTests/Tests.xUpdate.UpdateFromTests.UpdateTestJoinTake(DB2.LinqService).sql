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
	CAST(@id AS Int),
	CAST(@Value1 AS Int),
	CAST(@Value2 AS Int),
	CAST(@Value3 AS Int),
	CAST(@RelationId AS Int)
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
	CAST(@id AS Int),
	CAST(@Value1 AS Int),
	CAST(@Value2 AS Int),
	CAST(@Value3 AS Int),
	CAST(@RelationId AS Int)
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
	CAST(@id AS Int),
	CAST(@Value1 AS Int),
	CAST(@Value2 AS Int),
	CAST(@Value3 AS Int),
	CAST(@RelationId AS Int)
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
	CAST(@id AS Int),
	CAST(@Value1 AS Int),
	CAST(@Value2 AS Int),
	CAST(@Value3 AS Int),
	CAST(@RelationId AS Int)
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
	CAST(@id AS Int),
	CAST(@Value1 AS Int),
	CAST(@Value2 AS Int),
	CAST(@Value3 AS Int)
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
	CAST(@id AS Int),
	CAST(@Value1 AS Int),
	CAST(@Value2 AS Int),
	CAST(@Value3 AS Int)
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
	CAST(@id AS Int),
	CAST(@Value1 AS Int),
	CAST(@Value2 AS Int),
	CAST(@Value3 AS Int)
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
	CAST(@id AS Int),
	CAST(@Value1 AS Int),
	CAST(@Value2 AS Int),
	CAST(@Value3 AS Int)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @int1 Integer(4) -- Int32
SET     @int1 = 11
DECLARE @int2 Integer(4) -- Int32
SET     @int2 = 22
DECLARE @int3 Integer(4) -- Int32
SET     @int3 = 33
DECLARE @someId Integer(4) -- Int32
SET     @someId = 100

UPDATE
	"UpdatedEntities"
SET
	("Value1", "Value2", "Value3") = (
		SELECT
			("UpdatedEntities"."Value1" * "t4"."Value1") * CAST(@int1 AS Int),
			("UpdatedEntities"."Value2" * "t4"."Value2") * CAST(@int2 AS Int),
			("UpdatedEntities"."Value3" * "t4"."Value3") * CAST(@int3 AS Int)
		FROM
			(
				SELECT
					"t_1"."Value1",
					"t_1"."Value2",
					"t_1"."Value3",
					"t3"."id"
				FROM
					"UpdatedEntities" "t3"
						INNER JOIN "NewEntities" "t_1" ON "t_1"."id" = "t3"."id"
				WHERE
					"t_1"."id" <> @someId
				FETCH FIRST 2 ROWS ONLY
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
					"t1"."id"
				FROM
					"UpdatedEntities" "t1"
						INNER JOIN "NewEntities" "t" ON "t"."id" = "t1"."id"
				WHERE
					"t"."id" <> @someId
				FETCH FIRST 2 ROWS ONLY
			) "t2"
		WHERE
			"UpdatedEntities"."id" = "t2"."id"
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

