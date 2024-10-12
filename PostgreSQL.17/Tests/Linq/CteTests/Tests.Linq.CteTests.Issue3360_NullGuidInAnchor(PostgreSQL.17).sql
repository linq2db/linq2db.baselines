BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue3360NullInAnchor"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue3360NullInAnchor"
(
	"Id"    Int         NOT NULL,
	"Guid"  uuid            NULL,
	"Enum1" VarChar(50)     NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

WITH RECURSIVE cte ("Id", "Guid")
AS
(
	SELECT
		p."Id",
		NULL::uuid
	FROM
		"Issue3360NullInAnchor" p
	UNION ALL
	SELECT
		t1."Id",
		r."Guid"
	FROM
		cte t1
			INNER JOIN "Issue3360NullInAnchor" r ON t1."Id" = r."Id" + 100
)
SELECT
	t2."Id",
	t2."Guid"
FROM
	cte t2

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue3360NullInAnchor"

