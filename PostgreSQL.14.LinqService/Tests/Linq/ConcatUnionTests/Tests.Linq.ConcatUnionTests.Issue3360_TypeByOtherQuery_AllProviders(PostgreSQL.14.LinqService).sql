﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p."Id",
	p."Str"
FROM
	"Issue3360Table" p
UNION ALL
SELECT
	p_1."Id",
	'str'::VarChar
FROM
	"Issue3360Table" p_1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p."Id",
	'str'::VarChar
FROM
	"Issue3360Table" p
UNION ALL
SELECT
	p_1."Id",
	p_1."Str"
FROM
	"Issue3360Table" p_1

