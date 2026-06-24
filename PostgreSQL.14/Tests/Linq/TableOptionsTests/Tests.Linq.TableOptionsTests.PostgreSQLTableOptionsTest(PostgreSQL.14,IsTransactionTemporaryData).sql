-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

CREATE TEMPORARY TABLE "TestTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_TestTable" PRIMARY KEY ("Id")
)
ON COMMIT DELETE ROWS

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

DROP TABLE IF EXISTS "TestTable"

