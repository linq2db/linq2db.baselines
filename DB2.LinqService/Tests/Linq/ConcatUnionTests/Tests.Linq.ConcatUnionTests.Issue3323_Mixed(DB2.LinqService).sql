BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3323Table"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue3323Table"
		(
			"Id"       Int           NOT NULL,
			"FistName" NVarChar(255)     NULL,
			"LastName" NVarChar(255)     NULL,
			"Text"     NVarChar(255) NOT NULL,

			CONSTRAINT "PK_Issue3323Table" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Issue3323Table"
(
	"Id",
	"FistName",
	"LastName",
	"Text"
)
VALUES
(
	1,
	'one',
	'two',
	'text'
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"r"."Id",
	"r"."FistName" || ' ' || "r"."LastName"
FROM
	"Issue3323Table" "r"
UNION ALL
SELECT
	"r_1"."Id" + 1,
	"r_1"."Text"
FROM
	"Issue3323Table" "r_1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"r"."Id" + 1,
	"r"."Text"
FROM
	"Issue3323Table" "r"
UNION ALL
SELECT
	"r_1"."Id",
	"r_1"."FistName" || ' ' || "r_1"."LastName"
FROM
	"Issue3323Table" "r_1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3323Table"';
END

