BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestTable"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "TestTable"
(
	"Id" Int NOT NULL,
	"Fd" Int     NULL,

	CONSTRAINT "PK_TestTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

/* My Test */
SELECT
	t1."Id",
	t1."Fd"
FROM
	"TestTable" t1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestTable"

