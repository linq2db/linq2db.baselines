BeforeExecute
-- DB2 DB2.LUW DB2LUW

WITH "cte" ("Id", "Enum1")
AS
(
	SELECT
		"p"."Id",
		CAST(NULL AS VarChar(50))
	FROM
		"Issue3360NullInAnchor" "p"
	UNION ALL
	SELECT
		"t1"."Id",
		VarChar('THIS_IS_ONE', 50)
	FROM
		"cte" "t1",
		"Issue3360NullInAnchor" "r"
	WHERE
		"t1"."Id" = "r"."Id" + 100
)
SELECT
	"t2"."Id",
	"t2"."Enum1"
FROM
	"cte" "t2"

