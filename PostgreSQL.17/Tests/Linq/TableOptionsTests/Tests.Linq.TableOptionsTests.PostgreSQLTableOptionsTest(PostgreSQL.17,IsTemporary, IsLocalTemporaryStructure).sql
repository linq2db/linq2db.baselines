-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

CREATE TEMPORARY TABLE "TestTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_TestTable" PRIMARY KEY ("Id")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

DROP TABLE IF EXISTS "TestTable"

