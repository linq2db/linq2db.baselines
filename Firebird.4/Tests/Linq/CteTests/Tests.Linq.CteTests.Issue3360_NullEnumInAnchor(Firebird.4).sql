BeforeExecute
-- Firebird.4 Firebird4

WITH RECURSIVE "cte" ("Id", "Enum1")
AS
(
	SELECT
		"p"."Id",
		NULL
	FROM
		"Issue3360NullInAnchor" "p"
	UNION ALL
	SELECT
		"t1"."Id",
		CAST('THIS_IS_ONE' AS VarChar(50) CHARACTER SET UNICODE_FSS)
	FROM
		"cte" "t1"
			INNER JOIN "Issue3360NullInAnchor" "r" ON "t1"."Id" = "r"."Id" + 100
)
SELECT
	"t2"."Id",
	"t2"."Enum1"
FROM
	"cte" "t2"

