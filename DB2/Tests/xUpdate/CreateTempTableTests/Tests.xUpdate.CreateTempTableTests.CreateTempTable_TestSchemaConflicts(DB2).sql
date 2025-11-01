-- DB2 DB2.LUW DB2LUW

INSERT INTO "TestTempTable"
(
	"Id",
	"Value"
)
VALUES
(
	1,
	'value'
)

-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "TempTable"
		(
			"Id"      Int           NOT NULL,
			"Renamed" NVarChar(255)     NULL
		)
	';
END

-- DB2 DB2.LUW DB2LUW

INSERT INTO "TempTable"
(
	"Id",
	"Renamed"
)
SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestTempTable" "t1"

-- DB2 DB2.LUW DB2LUW

INSERT INTO "TestTempTable"
(
	"Id",
	"Value"
)
VALUES
(
	2,
	'value 2'
)

-- DB2 DB2.LUW DB2LUW

INSERT INTO "TempTable"
(
	"Id",
	"Renamed"
)
VALUES
(
	2,
	'renamed 2'
)

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestTempTable" "t1"
ORDER BY
	"t1"."Id"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Renamed"
FROM
	"TempTable" "t1"
ORDER BY
	"t1"."Id"

-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TempTable"';
END

