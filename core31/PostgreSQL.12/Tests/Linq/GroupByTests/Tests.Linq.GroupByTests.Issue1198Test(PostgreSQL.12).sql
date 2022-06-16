BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "Issue1192Table"
(
	"IdId"      Int NOT NULL,
	"MyOtherId" Int NOT NULL,
	"Status"    Int NOT NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Issue1192Table" t
		WHERE
			t."Status" = 3 AND t."MyOtherId" = 12
	)
FROM
	"Issue1192Table" t_1
WHERE
	t_1."MyOtherId" = 12
LIMIT 1

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue1192Table"

