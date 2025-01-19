BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4671EntityTMP')) THEN
		EXECUTE STATEMENT '
			CREATE GLOBAL TEMPORARY TABLE "Issue4671EntityTMP"
			(
				"Id"    Int  NOT NULL,
				"Value" Int  NOT NULL,

				CONSTRAINT "PK_Issue4671EntityTMP" PRIMARY KEY ("Id")
			)
			ON COMMIT PRESERVE ROWS
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Issue4671EntityTMP')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_Issue4671EntityTMP"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Issue4671EntityTMP')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_Issue4671EntityTMP" FOR "Issue4671EntityTMP"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_Issue4671EntityTMP", 1);
			END
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Issue4671Entity"
(
	"Value"
)
VALUES
(
	1
)

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Issue4671EntityTMP"
(
	"Value"
)
VALUES
(
	2
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."Id",
	"t1"."Value"
FROM
	"Issue4671Entity" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."Id",
	"t1"."Value"
FROM
	"Issue4671EntityTMP" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Issue4671EntityTMP')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Issue4671EntityTMP"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Issue4671EntityTMP')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Issue4671EntityTMP"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4671EntityTMP')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4671EntityTMP"';
END

