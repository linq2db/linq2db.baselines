-- PostgreSQL.9.2 PostgreSQL
CREATE TEMPORARY TABLE "TestTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_TestTable" PRIMARY KEY ("Id")
)
ON COMMIT DELETE ROWS

-- PostgreSQL.9.2 PostgreSQL
DROP TABLE IF EXISTS "TestTable"

