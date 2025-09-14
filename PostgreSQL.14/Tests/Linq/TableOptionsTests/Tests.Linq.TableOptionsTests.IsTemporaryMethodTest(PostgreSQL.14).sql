BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TestTable"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TEMPORARY TABLE "TestTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_TestTable" PRIMARY KEY ("Id")
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Value",
	t1."Id",
	t1."Value",
	t1."Id",
	t1."Value"
FROM
	"TestTable" t1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TestTable"

