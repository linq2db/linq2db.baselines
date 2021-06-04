BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE "TestTable"
(
	"Id" Int NOT NULL,
	"Fd" Int     NULL,

	CONSTRAINT "PK_TestTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

/* My Test */
UPDATE
	"TestTable"
SET
	"Fd" = 2
WHERE
	"TestTable"."Id" = 1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

/* My Test */
INSERT INTO "TestTable"
(
	"Id",
	"Fd"
)
VALUES
(
	1,
	2
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE IF EXISTS "TestTable"

