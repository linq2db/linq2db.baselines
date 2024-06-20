BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MessageEventDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "MessageEventDTO"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MessageEventDTO')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "MessageEventDTO"
			(
				"Id" Int NOT NULL,

				CONSTRAINT "PK_MessageEventDTO" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MessageEventDTOTb2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "MessageEventDTOTb2"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MessageEventDTOTb2')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "MessageEventDTOTb2"
			(
				"Id" Int NOT NULL,

				CONSTRAINT "PK_MessageEventDTOTb2" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "MessageEventDTOTb2"
(
	"Id"
)
SELECT
	"x"."Id"
FROM
	"MessageEventDTO" "x"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MessageEventDTOTb2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "MessageEventDTOTb2"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MessageEventDTO')) THEN
		EXECUTE STATEMENT 'DROP TABLE "MessageEventDTO"';
END

