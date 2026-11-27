-- Firebird.4 Firebird4
WITH RECURSIVE "cte" ("Id", "Str")
AS
(
	SELECT
		"p"."Id",
		CAST('Str1' AS VarChar(255) CHARACTER SET UNICODE_FSS)
	FROM
		"CteLiteralTypingTable" "p"
	UNION ALL
	SELECT
		"t1"."Id",
		CAST('Str2' AS VarChar(255) CHARACTER SET UNICODE_FSS)
	FROM
		"cte" "t1"
			INNER JOIN "CteLiteralTypingTable" "r" ON "t1"."Id" = "r"."Id" + 1
)
SELECT
	"t2"."Id",
	"t2"."Str"
FROM
	"cte" "t2"

