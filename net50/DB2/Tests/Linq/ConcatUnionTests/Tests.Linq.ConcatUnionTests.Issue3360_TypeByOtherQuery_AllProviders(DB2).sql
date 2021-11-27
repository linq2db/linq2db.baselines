BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Issue3360Table"
(
	"Id"  Int            NOT NULL,
	"Str" VarChar(32672)     NULL,

	CONSTRAINT "PK_Issue3360Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."Id",
	"p"."Str"
FROM
	"Issue3360Table" "p"
UNION ALL
SELECT
	"p_1"."Id",
	'str'
FROM
	"Issue3360Table" "p_1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."Id",
	'str'
FROM
	"Issue3360Table" "p"
UNION ALL
SELECT
	"p_1"."Id",
	"p_1"."Str"
FROM
	"Issue3360Table" "p_1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3360Table"';
END

