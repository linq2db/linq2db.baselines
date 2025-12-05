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
		VarChar('THIS_IS_TWO', 50)
	FROM
		"cte" "t1",
		"Issue3360WithEnum" "r"
	WHERE
		"t1"."Id" = "r"."Id" + 1
)
SELECT
	"t2"."Id",
	"t2"."Str"
FROM
	"cte" "t2"

