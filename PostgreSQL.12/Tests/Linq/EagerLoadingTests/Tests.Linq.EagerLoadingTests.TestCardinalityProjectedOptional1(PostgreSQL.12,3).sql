BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "EntityA"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "EntityA"
(
	"Id" Int NOT NULL,
	"FK" Int     NULL,

	CONSTRAINT "PK_EntityA" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "EntityA"
(
	"Id",
	"FK"
)
VALUES
(10,20),
(11,21),
(12,22),
(13,20),
(14,NULL),
(15,NULL),
(16,25),
(17,26),
(18,29)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "EntityB"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "EntityB"
(
	"Id" Int NOT NULL,
	"FK" Int     NULL,

	CONSTRAINT "PK_EntityB" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "EntityB"
(
	"Id",
	"FK"
)
VALUES
(20,30),
(21,31),
(22,30),
(23,31),
(24,31),
(25,NULL),
(26,NULL),
(27,NULL),
(28,39)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "EntityC"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "EntityC"
(
	"Id" Int NOT NULL,
	"FK" Int     NULL,

	CONSTRAINT "PK_EntityC" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "EntityC"
(
	"Id",
	"FK"
)
VALUES
(30,NULL),
(31,NULL),
(32,NULL),
(33,NULL),
(34,NULL)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "EntityD"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "EntityD"
(
	"Id" Int NOT NULL,
	"FK" Int     NULL,

	CONSTRAINT "PK_EntityD" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "EntityD"
(
	"Id",
	"FK"
)
VALUES
(40,20),
(41,21),
(42,21),
(43,21),
(44,25),
(45,26),
(46,26),
(47,NULL),
(48,NULL),
(401,29)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	m_1."Id",
	d."Id",
	d."FK"
FROM
	(
		SELECT DISTINCT
			"a_ObjectBOptional"."Id"
		FROM
			"EntityA" e
				LEFT JOIN "EntityB" "a_ObjectBOptional" ON e."FK" = "a_ObjectBOptional"."Id"
	) m_1
		INNER JOIN "EntityD" d ON m_1."Id" = d."FK" OR m_1."Id" IS NULL AND d."FK" IS NULL

BeforeExecute
DisposeTransaction
BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	e."Id",
	"a_ObjectBOptional"."Id",
	"a_ObjectBOptional"."Id",
	"a_ObjectC"."Id",
	"a_ObjectC"."FK"
FROM
	"EntityA" e
		LEFT JOIN "EntityB" "a_ObjectBOptional" ON e."FK" = "a_ObjectBOptional"."Id"
		LEFT JOIN "EntityC" "a_ObjectC" ON "a_ObjectBOptional"."FK" = "a_ObjectC"."Id"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "EntityD"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "EntityC"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "EntityB"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "EntityA"

