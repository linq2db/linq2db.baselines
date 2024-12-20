﻿BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EntityMA')) THEN
		EXECUTE STATEMENT 'DROP TABLE "EntityMA"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EntityMA')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "EntityMA"
			(
				"Id" Int NOT NULL,
				FK   Int,

				CONSTRAINT "PK_EntityMA" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "EntityMA"
(
	"Id",
	FK
)
SELECT 10,NULL FROM rdb$database UNION ALL
SELECT 11,NULL FROM rdb$database UNION ALL
SELECT 12,NULL FROM rdb$database UNION ALL
SELECT 13,NULL FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EntityMB')) THEN
		EXECUTE STATEMENT 'DROP TABLE "EntityMB"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EntityMB')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "EntityMB"
			(
				"Id" Int NOT NULL,
				FK   Int,
				FKD  Int,

				CONSTRAINT "PK_EntityMB" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "EntityMB"
(
	"Id",
	FK,
	FKD
)
SELECT 20,10,40 FROM rdb$database UNION ALL
SELECT 21,11,NULL FROM rdb$database UNION ALL
SELECT 22,11,40 FROM rdb$database UNION ALL
SELECT 23,19,49 FROM rdb$database UNION ALL
SELECT 24,19,NULL FROM rdb$database UNION ALL
SELECT 25,NULL,49 FROM rdb$database UNION ALL
SELECT 26,NULL,40 FROM rdb$database UNION ALL
SELECT 27,19,41 FROM rdb$database UNION ALL
SELECT 28,10,NULL FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EntityMC')) THEN
		EXECUTE STATEMENT 'DROP TABLE "EntityMC"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EntityMC')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "EntityMC"
			(
				"Id" Int NOT NULL,
				FK   Int,

				CONSTRAINT "PK_EntityMC" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "EntityMC"
(
	"Id",
	FK
)
SELECT 30,20 FROM rdb$database UNION ALL
SELECT 31,24 FROM rdb$database UNION ALL
SELECT 32,21 FROM rdb$database UNION ALL
SELECT 33,21 FROM rdb$database UNION ALL
SELECT 34,23 FROM rdb$database UNION ALL
SELECT 35,NULL FROM rdb$database UNION ALL
SELECT 36,NULL FROM rdb$database UNION ALL
SELECT 37,29 FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EntityMD')) THEN
		EXECUTE STATEMENT 'DROP TABLE "EntityMD"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EntityMD')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "EntityMD"
			(
				"Id" Int NOT NULL,
				FK   Int,

				CONSTRAINT "PK_EntityMD" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "EntityMD"
(
	"Id",
	FK
)
SELECT 40,NULL FROM rdb$database UNION ALL
SELECT 41,NULL FROM rdb$database UNION ALL
SELECT 42,NULL FROM rdb$database

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"m_1"."Id",
	"m_1"."Id_1",
	"d_1"."Id",
	"d_1".FK
FROM
	(
		SELECT DISTINCT
			"d"."Id",
			"t2"."Id" as "Id_1"
		FROM
			(
				SELECT DISTINCT
					"t1"."Id"
				FROM
					"EntityMA" "t1"
			) "t2"
				INNER JOIN "EntityMB" "d" ON "t2"."Id" = "d".FK
	) "m_1"
		INNER JOIN "EntityMC" "d_1" ON "m_1"."Id" = "d_1".FK

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"m_1"."Id",
	"d"."Id",
	"d".FK,
	"d".FKD,
	"d"."Id"
FROM
	"EntityMA" "m_1"
		INNER JOIN "EntityMB" "d" ON "m_1"."Id" = "d".FK

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1".FK,
	"t1"."Id"
FROM
	"EntityMA" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EntityMD')) THEN
		EXECUTE STATEMENT 'DROP TABLE "EntityMD"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EntityMC')) THEN
		EXECUTE STATEMENT 'DROP TABLE "EntityMC"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EntityMB')) THEN
		EXECUTE STATEMENT 'DROP TABLE "EntityMB"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'EntityMA')) THEN
		EXECUTE STATEMENT 'DROP TABLE "EntityMA"';
END

