﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3360Table"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue3360Table"
(
	"Id"  Int     NOT NULL,
	"Str" VarChar     NULL,

	CONSTRAINT "PK_Issue3360Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3360Table"

