-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	p."Id",
	p."Str"
FROM
	"SetLiteralTypingTable" p
UNION ALL
SELECT
	p_1."Id",
	CAST('str' AS VarChar(255))
FROM
	"SetLiteralTypingTable" p_1

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	p."Id",
	CAST('str' AS VarChar(255))
FROM
	"SetLiteralTypingTable" p
UNION ALL
SELECT
	p_1."Id",
	p_1."Str"
FROM
	"SetLiteralTypingTable" p_1

