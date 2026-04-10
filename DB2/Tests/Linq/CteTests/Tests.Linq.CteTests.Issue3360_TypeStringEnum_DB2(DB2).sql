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
		"t1"."Id_1",
		VarChar('THIS_IS_TWO', 50)
	FROM
		(
			SELECT
				"r"."Id",
				"p_1"."Id" as "Id_1"
			FROM
				"cte" "p_1",
				"Issue3360WithEnum" "r"
		) "t1"
	WHERE
		"t1"."Id_1" = "t1"."Id" + 1
)
SELECT
	"t2"."Id",
	"t2"."Str"
FROM
	"cte" "t2"

