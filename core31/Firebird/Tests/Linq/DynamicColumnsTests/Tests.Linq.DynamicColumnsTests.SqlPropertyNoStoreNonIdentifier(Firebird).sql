BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT '
		CREATE TABLE "DynamicTable"
		(
			ID               Int  NOT NULL,
			"Not Identifier" Int  NOT NULL,
			"Some Value"     Int  NOT NULL,

			CONSTRAINT "PK_DynamicTable" PRIMARY KEY (ID)
		)
	';
	EXECUTE STATEMENT '
		CREATE GENERATOR "GIDENTITY_DynamicTable"
	';
	EXECUTE STATEMENT '
		CREATE TRIGGER "TIDENTITY_DynamicTable" FOR "DynamicTable"
		BEFORE INSERT POSITION 0
		AS BEGIN
			NEW.ID = GEN_ID("GIDENTITY_DynamicTable", 1);
		END
	';
END

BeforeExecute
-- Firebird

INSERT INTO "DynamicTable"
(
	"Not Identifier",
	"Some Value"
)
SELECT 77,0 FROM rdb$database

BeforeExecute
-- Firebird

SELECT
	"d"."Not Identifier"
FROM
	"DynamicTable" "d"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_DynamicTable"';
	EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_DynamicTable"';
	EXECUTE STATEMENT 'DROP TABLE "DynamicTable"';
END

