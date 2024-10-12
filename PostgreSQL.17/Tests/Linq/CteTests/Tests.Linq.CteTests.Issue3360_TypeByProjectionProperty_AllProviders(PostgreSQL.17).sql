BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue3360Table"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue3360Table"
(
	"Id"  Int     NOT NULL,
	"Str" VarChar     NULL,

	CONSTRAINT "PK_Issue3360Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

WITH RECURSIVE cte ("Id", "Str")
AS
(
	SELECT
		p."Id",
		'Str1'
	FROM
		"Issue3360Table" p
	UNION ALL
	SELECT
		t1."Id",
		'Str2'
	FROM
		cte t1
			INNER JOIN "Issue3360Table" r ON t1."Id" = r."Id" + 1
)
SELECT
	t2."Id",
	t2."Str"
FROM
	cte t2

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue3360Table"

