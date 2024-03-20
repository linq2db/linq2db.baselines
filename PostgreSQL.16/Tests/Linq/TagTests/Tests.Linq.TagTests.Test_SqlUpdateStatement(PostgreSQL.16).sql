BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestTable"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "TestTable"
(
	"Id" Int NOT NULL,
	"Fd" Int     NULL,

	CONSTRAINT "PK_TestTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Fd Integer -- Int32
SET     @Fd = 1

/* My Test */
UPDATE
	"TestTable"
SET
	"Fd" = :Fd

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestTable"

