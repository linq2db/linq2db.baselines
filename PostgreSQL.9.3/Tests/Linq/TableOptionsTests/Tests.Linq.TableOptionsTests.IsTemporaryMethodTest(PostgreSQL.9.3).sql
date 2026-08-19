-- PostgreSQL.9.3 PostgreSQL
DROP TABLE IF EXISTS "TestTable"

-- PostgreSQL.9.3 PostgreSQL
CREATE TEMPORARY TABLE "TestTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_TestTable" PRIMARY KEY ("Id")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."Id",
	t1."Value",
	t1."Id",
	t1."Value",
	t1."Id",
	t1."Value"
FROM
	"TestTable" t1

-- PostgreSQL.9.3 PostgreSQL
DROP TABLE IF EXISTS "TestTable"

