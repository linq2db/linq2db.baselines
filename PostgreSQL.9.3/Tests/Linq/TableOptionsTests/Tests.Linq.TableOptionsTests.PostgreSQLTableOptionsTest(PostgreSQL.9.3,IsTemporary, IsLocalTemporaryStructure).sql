-- PostgreSQL.9.3 PostgreSQL
CREATE TEMPORARY TABLE "TestTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_TestTable" PRIMARY KEY ("Id")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.9.3 PostgreSQL
DROP TABLE IF EXISTS "TestTable"

