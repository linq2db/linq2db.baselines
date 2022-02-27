BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "Issue3360NullInAnchor"
(
	"Id"    Int         NOT NULL,
	"Guid"  uuid            NULL,
	"Enum1" VarChar(50)     NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

WITH RECURSIVE cte ("Id", "Guid")
AS
(
	SELECT
		p."Id",
		Cast(NULL as uuid)
	FROM
		"Issue3360NullInAnchor" p
	UNION ALL
	SELECT
		p_1."Id",
		r."Guid"
	FROM
		cte p_1
			INNER JOIN "Issue3360NullInAnchor" r ON p_1."Id" = r."Id" + 100
)
SELECT
	t1."Id",
	t1."Guid"
FROM
	cte t1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3360NullInAnchor"

