BeforeExecute
-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "TestTable"

BeforeExecute
-- PostgreSQL.18 PostgreSQL

CREATE TEMPORARY TABLE "TestTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL,

	CONSTRAINT "PK_TestTable" PRIMARY KEY ("Id")
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- PostgreSQL.18 PostgreSQL

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
-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "TestTable"

