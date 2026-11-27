-- DB2 DB2.LUW DB2LUW
WITH "cte" ("Id", "Str")
AS
(
	SELECT
		"p"."Id",
		"p"."Str"
	FROM
		"CteStringEnumTable" "p"
	UNION ALL
	SELECT
		"t1"."Id",
		VarChar('THIS_IS_TWO', 50)
	FROM
		"cte" "t1",
		"CteStringEnumTable" "r"
	WHERE
		"t1"."Id" = "r"."Id" + 1
)
SELECT
	"t2"."Id",
	"t2"."Str"
FROM
	"cte" "t2"

