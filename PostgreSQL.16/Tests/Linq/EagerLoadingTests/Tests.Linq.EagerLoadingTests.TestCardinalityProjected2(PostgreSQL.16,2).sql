BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "EntityMA"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "EntityMA"
(
	"Id" Int NOT NULL,
	"FK" Int     NULL,

	CONSTRAINT "PK_EntityMA" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "EntityMA"
(
	"Id",
	"FK"
)
VALUES
(10,NULL),
(11,NULL),
(12,NULL),
(13,NULL)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "EntityMB"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "EntityMB"
(
	"Id"  Int NOT NULL,
	"FK"  Int     NULL,
	"FKD" Int     NULL,

	CONSTRAINT "PK_EntityMB" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "EntityMB"
(
	"Id",
	"FK",
	"FKD"
)
VALUES
(20,10,40),
(21,11,NULL),
(22,11,40),
(23,19,49),
(24,19,NULL),
(25,NULL,49),
(26,NULL,40),
(27,19,41),
(28,10,NULL)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "EntityMC"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "EntityMC"
(
	"Id" Int NOT NULL,
	"FK" Int     NULL,

	CONSTRAINT "PK_EntityMC" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "EntityMC"
(
	"Id",
	"FK"
)
VALUES
(30,20),
(31,24),
(32,21),
(33,21),
(34,23),
(35,NULL),
(36,NULL),
(37,29)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "EntityMD"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "EntityMD"
(
	"Id" Int NOT NULL,
	"FK" Int     NULL,

	CONSTRAINT "PK_EntityMD" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "EntityMD"
(
	"Id",
	"FK"
)
VALUES
(40,NULL),
(41,NULL),
(42,NULL)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	m_1."Id",
	d."Id",
	"a_ObjectD"."Id",
	"a_ObjectD"."FK"
FROM
	"EntityMA" m_1
		INNER JOIN "EntityMB" d ON m_1."Id" = d."FK"
		LEFT JOIN "EntityMD" "a_ObjectD" ON d."FKD" = "a_ObjectD"."Id"

BeforeExecute
DisposeTransaction
BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	e."Id"
FROM
	"EntityMA" e

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "EntityMD"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "EntityMC"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "EntityMB"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "EntityMA"

