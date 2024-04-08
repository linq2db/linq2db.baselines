BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue1192Table"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue1192Table"
(
	"IdId"      Int NOT NULL,
	"MyOtherId" Int NOT NULL,
	"Status"    Int NOT NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(CASE
		WHEN t."Status" = 3 THEN 1
		ELSE NULL
	END)
FROM
	"Issue1192Table" t
WHERE
	t."MyOtherId" = 12
LIMIT 1

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue1192Table"

