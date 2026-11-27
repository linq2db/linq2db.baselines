-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	p."Id",
	CAST('str1' AS VarChar(255))
FROM
	"SetLiteralTypingTable" p
UNION ALL
SELECT
	p_1."Id",
	CAST('str2' AS VarChar(255))
FROM
	"SetLiteralTypingTable" p_1

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	p."Id",
	CAST('str2' AS VarChar(255))
FROM
	"SetLiteralTypingTable" p
UNION ALL
SELECT
	p_1."Id",
	CAST('str1' AS VarChar(255))
FROM
	"SetLiteralTypingTable" p_1

