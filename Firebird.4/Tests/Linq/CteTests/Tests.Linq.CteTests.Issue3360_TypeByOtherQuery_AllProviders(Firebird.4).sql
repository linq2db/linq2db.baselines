-- Firebird.4 Firebird4

WITH RECURSIVE "cte" ("Id", "Str")
AS
(
	SELECT
		"p"."Id",
		"p"."Str"
	FROM
		"Issue3360Table" "p"
	UNION ALL
	SELECT
		"t1"."Id",
		CAST('Str' AS VarChar(255) CHARACTER SET UNICODE_FSS)
	FROM
		"cte" "t1",
		"Issue3360Table" "r"
	WHERE
		"t1"."Id" = "r"."Id" + 1
)
SELECT
	"t2"."Id",
	"t2"."Str"
FROM
	"cte" "t2"

