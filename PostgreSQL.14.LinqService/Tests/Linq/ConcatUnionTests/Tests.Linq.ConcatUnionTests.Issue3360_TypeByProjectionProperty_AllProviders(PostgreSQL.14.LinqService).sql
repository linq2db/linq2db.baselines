BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

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

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

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

