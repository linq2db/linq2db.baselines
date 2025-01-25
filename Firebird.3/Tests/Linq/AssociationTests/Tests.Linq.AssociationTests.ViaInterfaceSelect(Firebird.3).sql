BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MainEntity')) THEN
		EXECUTE STATEMENT 'DROP TABLE "MainEntity"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MainEntity')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "MainEntity"
			(
				"Id" Int NOT NULL,

				CONSTRAINT "PK_MainEntity" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SubEntity')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SubEntity"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SubEntity')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "SubEntity"
			(
				"Id"           Int NOT NULL,
				"MainEntityId" Int NOT NULL
			)
		';
END

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."MainEntityId"
FROM
	"MainEntity" "m_1"
		INNER JOIN "SubEntity" "d" ON "m_1"."Id" = "d"."MainEntityId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"x"."Id"
FROM
	"MainEntity" "x"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SubEntity')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SubEntity"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MainEntity')) THEN
		EXECUTE STATEMENT 'DROP TABLE "MainEntity"';
END

