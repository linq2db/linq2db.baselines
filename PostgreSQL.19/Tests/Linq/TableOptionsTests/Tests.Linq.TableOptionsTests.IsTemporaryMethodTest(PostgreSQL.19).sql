-- PostgreSQL.19 PostgreSQL12
DROP TABLE IF EXISTS "TestTable"

-- PostgreSQL.19 PostgreSQL12
CREATE TEMPORARY TABLE "TestTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_TestTable" PRIMARY KEY ("Id")
)
ON COMMIT PRESERVE ROWS

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."Id",
	t1."Value",
	t1."Id",
	t1."Value",
	t1."Id",
	t1."Value"
FROM
	"TestTable" t1

-- PostgreSQL.19 PostgreSQL12
DROP TABLE IF EXISTS "TestTable"

