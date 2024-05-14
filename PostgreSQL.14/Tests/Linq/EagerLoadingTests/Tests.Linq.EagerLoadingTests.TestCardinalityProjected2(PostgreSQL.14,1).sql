BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "EntityMA"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "EntityMA"
(
	"Id" Int NOT NULL,
	"FK" Int     NULL,

	CONSTRAINT "PK_EntityMA" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "EntityMB"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "EntityMB"
(
	"Id"  Int NOT NULL,
	"FK"  Int     NULL,
	"FKD" Int     NULL,

	CONSTRAINT "PK_EntityMB" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "EntityMC"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "EntityMC"
(
	"Id" Int NOT NULL,
	"FK" Int     NULL,

	CONSTRAINT "PK_EntityMC" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "EntityMD"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "EntityMD"
(
	"Id" Int NOT NULL,
	"FK" Int     NULL,

	CONSTRAINT "PK_EntityMD" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	m_1."Id",
	m_1."Id_1",
	d_1."Id",
	d_1."FK"
FROM
	(
		SELECT DISTINCT
			d."Id",
			t1."Id" as "Id_1"
		FROM
			(
				SELECT DISTINCT
					e."Id"
				FROM
					"EntityMA" e
			) t1
				INNER JOIN "EntityMB" d ON t1."Id" = d."FK"
	) m_1
		INNER JOIN "EntityMC" d_1 ON m_1."Id" = d_1."FK"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	m_1."Id",
	d."Id"
FROM
	"EntityMA" m_1
		INNER JOIN "EntityMB" d ON m_1."Id" = d."FK"

BeforeExecute
DisposeTransaction
BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	e."Id"
FROM
	"EntityMA" e

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "EntityMD"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "EntityMC"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "EntityMB"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "EntityMA"

