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

WITH RECURSIVE cte ("Id", "Enum1")
AS
(
	SELECT
		p."Id",
		NULL::VarChar(50)
	FROM
		"Issue3360NullInAnchor" p
	UNION ALL
	SELECT
		t1."Id",
		'THIS_IS_ONE'::VarChar(50)
	FROM
		cte t1
			INNER JOIN "Issue3360NullInAnchor" r ON t1."Id" = r."Id" + 100
)
SELECT
	t2."Id",
	t2."Enum1"
FROM
	cte t2

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue3360NullInAnchor"

