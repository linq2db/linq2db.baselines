-- PostgreSQL.15 PostgreSQL

SELECT
	p."Id",
	'str1'::VarChar
FROM
	"Issue3360Table" p
UNION ALL
SELECT
	p_1."Id",
	'str2'::VarChar
FROM
	"Issue3360Table" p_1

-- PostgreSQL.15 PostgreSQL

SELECT
	p."Id",
	'str2'::VarChar
FROM
	"Issue3360Table" p
UNION ALL
SELECT
	p_1."Id",
	'str1'::VarChar
FROM
	"Issue3360Table" p_1

