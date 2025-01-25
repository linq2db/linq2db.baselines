BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Test3697"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Test3697"
(
	"Id" SERIAL  NOT NULL,

	CONSTRAINT "PK_Test3697" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Test3697" DEFAULT VALUES

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Test3697Item"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Test3697Item"
(
	"Id"     SERIAL  NOT NULL,
	"Value"  Int     NOT NULL,
	"TestId" Int     NOT NULL,

	CONSTRAINT "PK_Test3697Item" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Test3697Item"
(
	"Value",
	"TestId"
)
VALUES
(3,1)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

UPDATE
	"Test3697Item"
SET
	"Value" = 1
FROM
	"Test3697" a
WHERE
	a."Id" = "Test3697Item"."TestId"
RETURNING
	"Test3697Item"."Id"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

UPDATE
	"Test3697Item"
SET
	"Value" = 1
FROM
	"Test3697" a
WHERE
	a."Id" = "Test3697Item"."TestId"
RETURNING
	"Test3697Item"."Id"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Test3697Item"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Test3697"

