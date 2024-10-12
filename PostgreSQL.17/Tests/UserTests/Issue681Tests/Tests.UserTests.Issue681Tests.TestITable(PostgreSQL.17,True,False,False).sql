BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue681Table"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue681Table"
(
	"ID"    Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_Issue681Table" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."ID",
	t1."Value"
FROM
	"Issue681Table" t1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue681Table"

