-- PostgreSQL.15 PostgreSQL12
SELECT
	current_database()
FROM
	"LinqDataTypes" t1
LIMIT 1

-- PostgreSQL.15 PostgreSQL12
DROP TABLE IF EXISTS "Issue681Table2"

-- PostgreSQL.15 PostgreSQL12
CREATE TABLE "Issue681Table2"
(
	"ID"    Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_Issue681Table2" PRIMARY KEY ("ID")
)

-- PostgreSQL.15 PostgreSQL12
DROP TABLE "Issue681Table2"

