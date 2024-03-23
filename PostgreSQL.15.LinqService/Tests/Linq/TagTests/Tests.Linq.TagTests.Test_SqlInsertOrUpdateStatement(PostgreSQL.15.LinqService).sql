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
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Fd Integer -- Int32
SET     @Fd = 2
DECLARE @Fd_1 Integer -- Int32
SET     @Fd_1 = 2

/* My Test */
INSERT INTO "TestTable" AS t1
(
	"Id",
	"Fd"
)
VALUES
(
	:Id,
	:Fd
)
ON CONFLICT ("Id") DO UPDATE SET
	"Fd" = :Fd_1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TestTable"

