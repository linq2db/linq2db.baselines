-- Firebird.3 Firebird3

WITH RECURSIVE "cte" ("Id", "Str")
AS
(
	SELECT
		"p"."Id",
		CAST('Str1' AS VarChar(255) CHARACTER SET UNICODE_FSS)
	FROM
		"Issue3360Table" "p"
	UNION ALL
	SELECT
		"t1"."Id",
		CAST('Str2' AS VarChar(255) CHARACTER SET UNICODE_FSS)
	FROM
		"cte" "t1"
			INNER JOIN "Issue3360Table" "r" ON "t1"."Id" = "r"."Id" + 1
)
SELECT
	"t2"."Id",
	"t2"."Str"
FROM
	"cte" "t2"

