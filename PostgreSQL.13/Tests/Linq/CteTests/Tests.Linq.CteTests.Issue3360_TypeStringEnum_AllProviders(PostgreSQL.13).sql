BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3360WithEnum"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue3360WithEnum"
(
	"Id"  Int         NOT NULL,
	"Str" VarChar(50) NOT NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

WITH RECURSIVE cte ("Id", "Str")
AS
(
	SELECT
		p."Id",
		p."Str"
	FROM
		"Issue3360WithEnum" p
	UNION ALL
	SELECT
		t1."Id",
		'THIS_IS_TWO'::VarChar(50)
	FROM
		cte t1
			INNER JOIN "Issue3360WithEnum" r ON t1."Id" = r."Id" + 1
)
SELECT
	t2."Id",
	t2."Str"
FROM
	cte t2

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3360WithEnum"

