-- PostgreSQL.15 PostgreSQL

SELECT
	current_schema()
FROM
	"LinqDataTypes" t1
LIMIT 1

-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue681Table2"

-- PostgreSQL.15 PostgreSQL

CREATE TABLE "Issue681Table2"
(
	"ID"    Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_Issue681Table2" PRIMARY KEY ("ID")
)

-- PostgreSQL.15 PostgreSQL

DROP TABLE public."Issue681Table2"

