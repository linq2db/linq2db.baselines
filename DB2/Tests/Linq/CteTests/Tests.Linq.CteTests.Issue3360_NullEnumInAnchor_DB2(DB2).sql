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
		"t1"."Id_1",
		VarChar('THIS_IS_ONE', 50)
	FROM
		(
			SELECT
				"r"."Id",
				"p_1"."Id" as "Id_1"
			FROM
				"cte" "p_1",
				"Issue3360NullInAnchor" "r"
		) "t1"
	WHERE
		"t1"."Id_1" = "t1"."Id" + 100
)
SELECT
	"t2"."Id",
	"t2"."Enum1"
FROM
	"cte" "t2"

