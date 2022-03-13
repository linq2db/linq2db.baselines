BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "Issue3360Table"
(
	"Id"  Int     NOT NULL,
	"Str" VarChar     NULL,

	CONSTRAINT "PK_Issue3360Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

WITH RECURSIVE cte ("Id", "Str")
AS
(
	SELECT
		p."Id",
		Cast(p."Str" as text)
	FROM
		"Issue3360Table" p
	UNION ALL
	SELECT
		p_1."Id",
		Cast('Str' as text)
	FROM
		cte p_1
			INNER JOIN "Issue3360Table" r ON p_1."Id" = r."Id" + 1
)
SELECT
	t1."Id",
	t1."Str"
FROM
	cte t1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE IF EXISTS "Issue3360Table"

