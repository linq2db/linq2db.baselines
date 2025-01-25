BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue3472TableDCTX"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue3472TableDCTX"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue3472TableDCTX"

