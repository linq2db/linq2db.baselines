BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "DynamicTable"
(
	ID               Int  NOT NULL,
	"Not Identifier" Int  NOT NULL,
	"Some Value"     Int  NOT NULL,

	CONSTRAINT "PK_DynamicTable" PRIMARY KEY (ID)
)

BeforeExecute
-- Firebird3 Firebird

CREATE GENERATOR "GIDENTITY_DynamicTable"

BeforeExecute
-- Firebird3 Firebird

CREATE TRIGGER "TIDENTITY_DynamicTable" FOR "DynamicTable"
BEFORE INSERT POSITION 0
AS BEGIN
	NEW.ID = GEN_ID("GIDENTITY_DynamicTable", 1);
END

BeforeExecute
-- Firebird3 Firebird

INSERT INTO "DynamicTable"
(
	"Not Identifier",
	"Some Value"
)
SELECT 77,0 FROM rdb$database

BeforeExecute
-- Firebird3 Firebird

SELECT 
	"d"."Not Identifier"
FROM
	"DynamicTable" "d"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_DynamicTable"';
	EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_DynamicTable"';
	EXECUTE STATEMENT 'DROP TABLE "DynamicTable"';
END

