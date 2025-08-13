BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	current_database()
FROM
	"LinqDataTypes" t1
LIMIT 1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	current_schema()
FROM
	"LinqDataTypes" t1
LIMIT 1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue681Table2"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

CREATE TABLE testdata.public."Issue681Table2"
(
	"ID"    Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_Issue681Table2" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

DROP TABLE IF EXISTS "Issue681Table2"

