BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EntityA')) THEN
		EXECUTE STATEMENT 'DROP TABLE "EntityA"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EntityA')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "EntityA"
			(
				"Id" Int NOT NULL,
				FK   Int,

				CONSTRAINT "PK_EntityA" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

INSERT INTO "EntityA"
(
	"Id",
	FK
)
SELECT 10,20 FROM rdb$database UNION ALL
SELECT 11,21 FROM rdb$database UNION ALL
SELECT 12,22 FROM rdb$database UNION ALL
SELECT 13,20 FROM rdb$database UNION ALL
SELECT 14,NULL FROM rdb$database UNION ALL
SELECT 15,NULL FROM rdb$database UNION ALL
SELECT 16,25 FROM rdb$database UNION ALL
SELECT 17,26 FROM rdb$database UNION ALL
SELECT 18,29 FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EntityB')) THEN
		EXECUTE STATEMENT 'DROP TABLE "EntityB"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EntityB')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "EntityB"
			(
				"Id" Int NOT NULL,
				FK   Int,

				CONSTRAINT "PK_EntityB" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

INSERT INTO "EntityB"
(
	"Id",
	FK
)
SELECT 20,30 FROM rdb$database UNION ALL
SELECT 21,31 FROM rdb$database UNION ALL
SELECT 22,30 FROM rdb$database UNION ALL
SELECT 23,31 FROM rdb$database UNION ALL
SELECT 24,31 FROM rdb$database UNION ALL
SELECT 25,NULL FROM rdb$database UNION ALL
SELECT 26,NULL FROM rdb$database UNION ALL
SELECT 27,NULL FROM rdb$database UNION ALL
SELECT 28,39 FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EntityC')) THEN
		EXECUTE STATEMENT 'DROP TABLE "EntityC"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EntityC')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "EntityC"
			(
				"Id" Int NOT NULL,
				FK   Int,

				CONSTRAINT "PK_EntityC" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

INSERT INTO "EntityC"
(
	"Id",
	FK
)
SELECT 30,NULL FROM rdb$database UNION ALL
SELECT 31,NULL FROM rdb$database UNION ALL
SELECT 32,NULL FROM rdb$database UNION ALL
SELECT 33,NULL FROM rdb$database UNION ALL
SELECT 34,NULL FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EntityD')) THEN
		EXECUTE STATEMENT 'DROP TABLE "EntityD"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EntityD')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "EntityD"
			(
				"Id" Int NOT NULL,
				FK   Int,

				CONSTRAINT "PK_EntityD" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

INSERT INTO "EntityD"
(
	"Id",
	FK
)
SELECT 40,20 FROM rdb$database UNION ALL
SELECT 41,21 FROM rdb$database UNION ALL
SELECT 42,21 FROM rdb$database UNION ALL
SELECT 43,21 FROM rdb$database UNION ALL
SELECT 44,25 FROM rdb$database UNION ALL
SELECT 45,26 FROM rdb$database UNION ALL
SELECT 46,26 FROM rdb$database UNION ALL
SELECT 47,NULL FROM rdb$database UNION ALL
SELECT 48,NULL FROM rdb$database UNION ALL
SELECT 401,29 FROM rdb$database

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"m_1"."Id",
	"d"."Id",
	"d".FK
FROM
	(
		SELECT DISTINCT
			"a_ObjectBOptional"."Id"
		FROM
			"EntityA" "e"
				LEFT JOIN "EntityB" "a_ObjectBOptional" ON "e".FK = "a_ObjectBOptional"."Id" AND "e".FK IS NOT NULL
	) "m_1"
		INNER JOIN "EntityD" "d" ON "m_1"."Id" = "d".FK AND "m_1"."Id" IS NOT NULL AND "d".FK IS NOT NULL OR "m_1"."Id" IS NULL AND "d".FK IS NULL

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"e"."Id",
	"a_ObjectBOptional"."Id",
	"a_ObjectBOptional"."Id"
FROM
	"EntityA" "e"
		LEFT JOIN "EntityB" "a_ObjectBOptional" ON "e".FK = "a_ObjectBOptional"."Id" AND "e".FK IS NOT NULL

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EntityD')) THEN
		EXECUTE STATEMENT 'DROP TABLE "EntityD"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EntityC')) THEN
		EXECUTE STATEMENT 'DROP TABLE "EntityC"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EntityB')) THEN
		EXECUTE STATEMENT 'DROP TABLE "EntityB"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EntityA')) THEN
		EXECUTE STATEMENT 'DROP TABLE "EntityA"';
END

