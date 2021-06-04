BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "TestTable"
(
	"Id" Int NOT NULL,
	"Fd" Int     NULL,

	CONSTRAINT "PK_TestTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

/* My Test */
SELECT
	t1."Id",
	t1."Fd"
FROM
	"TestTable" t1

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE IF EXISTS "TestTable"

