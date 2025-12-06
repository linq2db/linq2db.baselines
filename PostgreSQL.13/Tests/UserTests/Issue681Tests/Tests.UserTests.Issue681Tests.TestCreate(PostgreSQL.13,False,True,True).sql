-- PostgreSQL.13 PostgreSQL

SELECT
	current_database()
FROM
	"LinqDataTypes" t1
LIMIT 1

-- PostgreSQL.13 PostgreSQL

SELECT
	current_schema()
FROM
	"LinqDataTypes" t1
LIMIT 1

-- PostgreSQL.13 PostgreSQL

DROP TABLE IF EXISTS "Issue681Table2"

-- PostgreSQL.13 PostgreSQL

CREATE TABLE testdata.public."Issue681Table2"
(
	"ID"    Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_Issue681Table2" PRIMARY KEY ("ID")
)

-- PostgreSQL.13 PostgreSQL

DROP TABLE IF EXISTS "Issue681Table2"

