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
DROP TABLE "TestTable"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE IF EXISTS "TestTable"

