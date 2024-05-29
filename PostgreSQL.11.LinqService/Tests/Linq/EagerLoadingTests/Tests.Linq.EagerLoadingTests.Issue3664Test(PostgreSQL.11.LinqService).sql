BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Test3664"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Test3664"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_Test3664" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Test3664Item"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Test3664Item"
(
	"Id"     Int NOT NULL,
	"TestId" Int NOT NULL,

	CONSTRAINT "PK_Test3664Item" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 11

SELECT
	m_1."Id",
	d."Id",
	d."TestId"
FROM
	"Test3664" m_1
		INNER JOIN "Test3664Item" d ON m_1."Id" = d."TestId"
WHERE
	d."Id" = :id

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id"
FROM
	"Test3664" t1

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 12

SELECT
	m_1."Id",
	d."Id",
	d."TestId"
FROM
	"Test3664" m_1
		INNER JOIN "Test3664Item" d ON m_1."Id" = d."TestId"
WHERE
	d."Id" = :id

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id"
FROM
	"Test3664" t1

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Test3664Item"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Test3664"

