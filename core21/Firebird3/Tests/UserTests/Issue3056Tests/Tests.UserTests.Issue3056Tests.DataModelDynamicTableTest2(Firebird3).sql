BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT '
		CREATE TABLE "Table_3056"
		(
			"Id"          Int           NOT NULL,
			"Name"        VarChar(100),
			"Description" VarChar(500),

			CONSTRAINT "PK_Table_3056" PRIMARY KEY ("Id")
		)
	';
	EXECUTE STATEMENT '
		CREATE GENERATOR "GIDENTITY_Table_3056"
	';
	EXECUTE STATEMENT '
		CREATE TRIGGER "TIDENTITY_Table_3056" FOR "Table_3056"
		BEFORE INSERT POSITION 0
		AS BEGIN
			NEW."Id" = GEN_ID("GIDENTITY_Table_3056", 1);
		END
	';
END

BeforeExecute
-- Firebird3 Firebird

INSERT INTO "Table_3056"
(
	"Name",
	"Description"
)
SELECT 'n1','d0' FROM rdb$database UNION ALL
SELECT 'n2','d00' FROM rdb$database

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Table_3056')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Table_3056"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Table_3056')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Table_3056"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table_3056')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table_3056"';
END

