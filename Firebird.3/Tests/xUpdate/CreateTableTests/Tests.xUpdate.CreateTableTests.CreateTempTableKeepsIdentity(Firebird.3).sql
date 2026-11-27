-- Firebird.3 Firebird3
EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TempIdentityRowTMP')) THEN
		EXECUTE STATEMENT '
			CREATE GLOBAL TEMPORARY TABLE "TempIdentityRowTMP"
			(
				"Id"    Int  NOT NULL,
				"Value" Int  NOT NULL,

				CONSTRAINT "PK_TempIdentityRowTMP" PRIMARY KEY ("Id")
			)
			ON COMMIT PRESERVE ROWS
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_TempIdentityRowTMP')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_TempIdentityRowTMP"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_TempIdentityRowTMP')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_TempIdentityRowTMP" FOR "TempIdentityRowTMP"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_TempIdentityRowTMP", 1);
			END
		';
END

-- Firebird.3 Firebird3
INSERT INTO "TempIdentityRow"
(
	"Value"
)
VALUES
(
	1
)

-- Firebird.3 Firebird3
INSERT INTO "TempIdentityRowTMP"
(
	"Value"
)
VALUES
(
	2
)

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TempIdentityRow" "t1"
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TempIdentityRowTMP" "t1"
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3
EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_TempIdentityRowTMP')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_TempIdentityRowTMP"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_TempIdentityRowTMP')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_TempIdentityRowTMP"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TempIdentityRowTMP')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TempIdentityRowTMP"';
END

