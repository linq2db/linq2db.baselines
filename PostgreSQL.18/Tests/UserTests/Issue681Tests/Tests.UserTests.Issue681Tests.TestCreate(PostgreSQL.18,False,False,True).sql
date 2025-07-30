BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	current_schema()
FROM
	"LinqDataTypes" t1
LIMIT 1

BeforeExecute
-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "Issue681Table2"

BeforeExecute
-- PostgreSQL.18 PostgreSQL

CREATE TABLE public."Issue681Table2"
(
	"ID"    Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_Issue681Table2" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "Issue681Table2"

