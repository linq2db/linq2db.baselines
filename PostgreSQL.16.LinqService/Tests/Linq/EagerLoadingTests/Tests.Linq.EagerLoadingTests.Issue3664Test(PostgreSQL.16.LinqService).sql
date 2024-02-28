BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Test3664"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Test3664"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_Test3664" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "Test3664"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Test3664Item"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Test3664Item"
(
	"Id"     Int NOT NULL,
	"TestId" Int NOT NULL,

	CONSTRAINT "PK_Test3664Item" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 11
DECLARE @TestId Integer -- Int32
SET     @TestId = 1

INSERT INTO "Test3664Item"
(
	"Id",
	"TestId"
)
VALUES
(
	:Id,
	:TestId
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 12
DECLARE @TestId Integer -- Int32
SET     @TestId = 1

INSERT INTO "Test3664Item"
(
	"Id",
	"TestId"
)
VALUES
(
	:Id,
	:TestId
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 11

SELECT
	"lw_Test3664"."Id",
	a."Id",
	a."TestId"
FROM
	"Test3664" "lw_Test3664"
		INNER JOIN "Test3664Item" a ON "lw_Test3664"."Id" = a."TestId" AND a."Id" = :id

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id"
FROM
	"Test3664" t1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 12

SELECT
	"lw_Test3664"."Id",
	a."Id",
	a."TestId"
FROM
	"Test3664" "lw_Test3664"
		INNER JOIN "Test3664Item" a ON "lw_Test3664"."Id" = a."TestId" AND a."Id" = :id

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id"
FROM
	"Test3664" t1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Test3664Item"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Test3664"

