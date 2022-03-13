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

WITH "cte" ("Id", "Str")
AS
(
	SELECT
		"p"."Id",
		'Str1'
	FROM
		"Issue3360Table" "p"
	UNION ALL
	SELECT
		"t1"."Id",
		"t1"."Str"
	FROM
		(
			SELECT
				"p_1"."Id",
				'Str2' as "Str"
			FROM
				"cte" "p_1",
				"Issue3360Table" "r"
			WHERE
				"p_1"."Id" = "r"."Id" + 1
		) "t1"
)
SELECT
	"t2"."Id",
	"t2"."Str"
FROM
	"cte" "t2"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3360Table"';
END

