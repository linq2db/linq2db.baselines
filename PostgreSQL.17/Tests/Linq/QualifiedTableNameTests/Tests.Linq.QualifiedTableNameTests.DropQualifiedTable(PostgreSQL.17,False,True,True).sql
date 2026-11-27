-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	current_database()
FROM
	"LinqDataTypes" t1
LIMIT 1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	current_schema()
FROM
	"LinqDataTypes" t1
LIMIT 1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DROP TABLE IF EXISTS "QualifiedNameTable2"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
CREATE TABLE "QualifiedNameTable2"
(
	"ID"    Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_QualifiedNameTable2" PRIMARY KEY ("ID")
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DROP TABLE testdata.public."QualifiedNameTable2"

