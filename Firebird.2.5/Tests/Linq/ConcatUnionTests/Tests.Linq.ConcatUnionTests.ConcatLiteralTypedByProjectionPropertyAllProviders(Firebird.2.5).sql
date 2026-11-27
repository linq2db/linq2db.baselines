-- Firebird.2.5 Firebird
SELECT
	"p"."Id",
	CAST('str1' AS VarChar(255) CHARACTER SET UNICODE_FSS)
FROM
	"SetLiteralTypingTable" "p"
UNION ALL
SELECT
	"p_1"."Id",
	CAST('str2' AS VarChar(255) CHARACTER SET UNICODE_FSS)
FROM
	"SetLiteralTypingTable" "p_1"

-- Firebird.2.5 Firebird
SELECT
	"p"."Id",
	CAST('str2' AS VarChar(255) CHARACTER SET UNICODE_FSS)
FROM
	"SetLiteralTypingTable" "p"
UNION ALL
SELECT
	"p_1"."Id",
	CAST('str1' AS VarChar(255) CHARACTER SET UNICODE_FSS)
FROM
	"SetLiteralTypingTable" "p_1"

