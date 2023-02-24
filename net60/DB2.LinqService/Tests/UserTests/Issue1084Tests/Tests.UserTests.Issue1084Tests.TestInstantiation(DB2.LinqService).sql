﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "i1084_person"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "i1084_person"
		(
			"Id"            Int NOT NULL,
			"Number"        Int NOT NULL,
			"StatusBitmask" Int NOT NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Number_1 Integer(4) -- Int32
SET     @Number_1 = 1
DECLARE @StatusBitmask Integer(4) -- Int32
SET     @StatusBitmask = 0

INSERT INTO "i1084_person"
(
	"Id",
	"Number",
	"StatusBitmask"
)
VALUES
(
	@Id,
	@Number_1,
	@StatusBitmask
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Number_1 Integer(4) -- Int32
SET     @Number_1 = 2
DECLARE @StatusBitmask Integer(4) -- Int32
SET     @StatusBitmask = 0

INSERT INTO "i1084_person"
(
	"Id",
	"Number",
	"StatusBitmask"
)
VALUES
(
	@Id,
	@Number_1,
	@StatusBitmask
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "i1084_student"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "i1084_student"
		(
			"Id"            Int           NOT NULL,
			"Number"        NVarChar(255)     NULL,
			"StatusBitmask" Int           NOT NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Number_1 VarChar(1) -- String
SET     @Number_1 = '1'
DECLARE @StatusBitmask Integer(4) -- Int32
SET     @StatusBitmask = 0

INSERT INTO "i1084_student"
(
	"Id",
	"Number",
	"StatusBitmask"
)
VALUES
(
	@Id,
	@Number_1,
	@StatusBitmask
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Number_1 VarChar(1) -- String
SET     @Number_1 = '2'
DECLARE @StatusBitmask Integer(4) -- Int32
SET     @StatusBitmask = 0

INSERT INTO "i1084_student"
(
	"Id",
	"Number",
	"StatusBitmask"
)
VALUES
(
	@Id,
	@Number_1,
	@StatusBitmask
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"k_1"."Id",
	"k_1"."Number",
	"k_1"."StatusBitmask",
	"joinedTable"."StatusBitmask"
FROM
	"i1084_person" "k_1"
		LEFT JOIN "i1084_student" "joinedTable" ON "k_1"."Id" = "joinedTable"."Id" AND (RTrim(Char("k_1"."Number")) = "joinedTable"."Number" OR RTrim(Char("k_1"."Number")) IS NULL AND "joinedTable"."Number" IS NULL)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "i1084_student"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "i1084_person"';
END

