BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "Issue3360WithEnum"
(
	"Id"  Int         NOT NULL,
	"Str" VarChar(50) NOT NULL
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

WITH RECURSIVE cte ("Id", "Str")
AS
(
	SELECT
		p."Id",
		Cast(p."Str" as text)
	FROM
		"Issue3360WithEnum" p
	UNION ALL
	SELECT
		p_1."Id",
		Cast('THIS_IS_TWO' as text)
	FROM
		cte p_1
			INNER JOIN "Issue3360WithEnum" r ON p_1."Id" = r."Id" + 1
)
SELECT
	t1."Id",
	t1."Str"
FROM
	cte t1

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3360WithEnum"

