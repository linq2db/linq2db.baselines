-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12

CREATE TEMPORARY TABLE "TestTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_TestTable" PRIMARY KEY ("Id")
)
ON COMMIT DELETE ROWS

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12

DROP TABLE IF EXISTS "TestTable"

