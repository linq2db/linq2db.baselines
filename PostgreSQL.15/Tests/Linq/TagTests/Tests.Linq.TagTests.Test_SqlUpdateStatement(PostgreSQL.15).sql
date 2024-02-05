BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestTable"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "TestTable"
(
	"Id" Int NOT NULL,
	"Fd" Int     NULL,

	CONSTRAINT "PK_TestTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

/* My Test */
UPDATE
	"TestTable"
SET
	"Fd" = 1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestTable"

