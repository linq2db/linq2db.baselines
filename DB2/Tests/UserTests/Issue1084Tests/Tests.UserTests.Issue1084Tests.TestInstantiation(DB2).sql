BeforeExecute
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

INSERT INTO "i1084_person"
(
	"Id",
	"Number",
	"StatusBitmask"
)
VALUES
(1,1,0),
(2,2,0)

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

INSERT INTO "i1084_student"
(
	"Id",
	"Number",
	"StatusBitmask"
)
VALUES
(1,'1',0),
(2,'2',0)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"k_1"."Id",
	"k_1"."Number",
	"k_1"."StatusBitmask",
	BitAnd("k_1"."StatusBitmask", 128),
	BitAnd("g_1"."StatusBitmask", 128)
FROM
	"i1084_person" "k_1"
		LEFT JOIN "i1084_student" "g_1" ON "k_1"."Id" = "g_1"."Id" AND RTrim(Char("k_1"."Number")) = "g_1"."Number"

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

