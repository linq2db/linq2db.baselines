BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue3472TableDC"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue3472TableDC"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Issue3472TableDC"
(
	"Id"
)
VALUES
(1)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	(
		SELECT
			COUNT(*)
		FROM
			"Person" p
		WHERE
			p."PersonID" = t1."Id"
	)
FROM
	"Issue3472TableDC" t1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue3472TableDC"

