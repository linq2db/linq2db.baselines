BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MainEntity')) THEN
		EXECUTE STATEMENT 'DROP TABLE "MainEntity"';
END

BeforeExecute
-- Firebird4 Firebird

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
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SubEntity')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SubEntity"';
END

BeforeExecute
-- Firebird4 Firebird

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
-- Firebird4 Firebird

SELECT
	(
		SELECT
			Count(*)
		FROM
			"SubEntity" "t1"
		WHERE
			"x"."Id" = "t1"."MainEntityId"
	)
FROM
	"MainEntity" "x"

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SubEntity')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SubEntity"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MainEntity')) THEN
		EXECUTE STATEMENT 'DROP TABLE "MainEntity"';
END

