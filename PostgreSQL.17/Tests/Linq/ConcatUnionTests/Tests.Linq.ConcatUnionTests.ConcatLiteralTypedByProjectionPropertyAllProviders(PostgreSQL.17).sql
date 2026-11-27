-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
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

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
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

