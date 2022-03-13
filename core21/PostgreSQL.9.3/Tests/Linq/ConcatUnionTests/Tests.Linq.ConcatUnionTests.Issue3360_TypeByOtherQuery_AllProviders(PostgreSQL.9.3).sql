BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "Issue3360Table"
(
	"Id"  Int     NOT NULL,
	"Str" VarChar     NULL,

	CONSTRAINT "PK_Issue3360Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	p."Id",
	p."Str"
FROM
	"Issue3360Table" p
UNION ALL
SELECT
	p_1."Id",
	'str'
FROM
	"Issue3360Table" p_1

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	p."Id",
	'str'
FROM
	"Issue3360Table" p
UNION ALL
SELECT
	p_1."Id",
	p_1."Str"
FROM
	"Issue3360Table" p_1

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE IF EXISTS "Issue3360Table"

