BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MainEntity')) THEN
		EXECUTE STATEMENT 'DROP TABLE "MainEntity"';
END

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SubEntity')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SubEntity"';
END

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"SubEntity" "a_SubEntities"
		WHERE
			"x"."Id" = "a_SubEntities"."MainEntityId"
	)
FROM
	"MainEntity" "x"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SubEntity')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SubEntity"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MainEntity')) THEN
		EXECUTE STATEMENT 'DROP TABLE "MainEntity"';
END

