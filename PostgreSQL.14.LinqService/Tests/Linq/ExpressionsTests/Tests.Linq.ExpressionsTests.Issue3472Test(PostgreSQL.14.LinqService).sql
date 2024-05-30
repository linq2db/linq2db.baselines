BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3472TableDCTX"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue3472TableDCTX"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "Issue3472TableDCTX"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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
	"Issue3472TableDCTX" t1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3472TableDCTX"

