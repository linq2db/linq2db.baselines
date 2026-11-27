-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	p."Id",
	'str1'::VarChar
FROM
	"SetLiteralTypingTable" p
UNION ALL
SELECT
	p_1."Id",
	'str2'::VarChar
FROM
	"SetLiteralTypingTable" p_1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	p."Id",
	'str2'::VarChar
FROM
	"SetLiteralTypingTable" p
UNION ALL
SELECT
	p_1."Id",
	'str1'::VarChar
FROM
	"SetLiteralTypingTable" p_1

