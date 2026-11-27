-- PostgreSQL.9.2 PostgreSQL
SELECT
	current_schema()
FROM
	"LinqDataTypes" t1
LIMIT 1

-- PostgreSQL.9.2 PostgreSQL
DROP TABLE IF EXISTS "QualifiedNameTable2"

-- PostgreSQL.9.2 PostgreSQL
CREATE TABLE "QualifiedNameTable2"
(
	"ID"    Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_QualifiedNameTable2" PRIMARY KEY ("ID")
)

-- PostgreSQL.9.2 PostgreSQL
DROP TABLE public."QualifiedNameTable2"

