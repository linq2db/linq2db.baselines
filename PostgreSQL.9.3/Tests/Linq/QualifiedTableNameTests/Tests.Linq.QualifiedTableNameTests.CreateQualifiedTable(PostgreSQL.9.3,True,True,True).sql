-- PostgreSQL.9.3 PostgreSQL
SELECT
	current_database()
FROM
	"LinqDataTypes" t1
LIMIT 1

-- PostgreSQL.9.3 PostgreSQL
SELECT
	current_schema()
FROM
	"LinqDataTypes" t1
LIMIT 1

-- PostgreSQL.9.3 PostgreSQL
DROP TABLE IF EXISTS "QualifiedNameTable2"

-- PostgreSQL.9.3 PostgreSQL
CREATE TABLE testdata.public."QualifiedNameTable2"
(
	"ID"    Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_QualifiedNameTable2" PRIMARY KEY ("ID")
)

-- PostgreSQL.9.3 PostgreSQL
DROP TABLE IF EXISTS "QualifiedNameTable2"

