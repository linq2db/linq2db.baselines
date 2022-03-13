BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Issue3360WithEnum"
(
	"Id"  Int         NOT NULL,
	"Str" VarChar(50) NOT NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

WITH "cte" ("Id", "Str")
AS
(
	SELECT
		"p"."Id",
		"p"."Str"
	FROM
		"Issue3360WithEnum" "p"
	UNION ALL
	SELECT
		"t1"."Id",
		"t1"."Str"
	FROM
		(
			SELECT
				"p_1"."Id",
				'THIS_IS_TWO' as "Str"
			FROM
				"cte" "p_1",
				"Issue3360WithEnum" "r"
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
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3360WithEnum"';
END

