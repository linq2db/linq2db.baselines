-- PostgreSQL.11 PostgreSQL
SELECT
	current_database()
FROM
	"LinqDataTypes" t1
LIMIT 1

-- PostgreSQL.11 PostgreSQL
DROP TABLE IF EXISTS "QualifiedNameTable2"

-- PostgreSQL.11 PostgreSQL
CREATE TABLE "QualifiedNameTable2"
(
	"ID"    Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_QualifiedNameTable2" PRIMARY KEY ("ID")
)

-- PostgreSQL.11 PostgreSQL
DROP TABLE "QualifiedNameTable2"

