BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_DynamicTable')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_DynamicTable"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_DynamicTable')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_DynamicTable"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DynamicTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DynamicTable"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DynamicTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "DynamicTable"
			(
				ID               Int  NOT NULL,
				"Not Identifier" Int  NOT NULL,
				"Some Value"     Int  NOT NULL,

				CONSTRAINT "PK_DynamicTable" PRIMARY KEY (ID)
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_DynamicTable')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_DynamicTable"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_DynamicTable')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_DynamicTable" FOR "DynamicTable"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW.ID = GEN_ID("GIDENTITY_DynamicTable", 1);
			END
		';
END

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @NotIdentifier Integer -- Int32
SET     @NotIdentifier = 77
DECLARE @Value Integer -- Int32
SET     @Value = 5

INSERT INTO "DynamicTable"
(
	"Not Identifier",
	"Some Value"
)
VALUES
(
	@NotIdentifier,
	@Value
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @NotIdentifier Integer -- Int32
SET     @NotIdentifier = 77
DECLARE @Value Integer -- Int32
SET     @Value = 5

INSERT INTO "DynamicTable"
(
	"Not Identifier",
	"Some Value"
)
VALUES
(
	@NotIdentifier,
	@Value
)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"g_1"."Not Identifier",
	COUNT(*),
	SUM("g_1"."Some Value")
FROM
	"DynamicTable" "g_1"
GROUP BY
	"g_1"."Not Identifier"

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_DynamicTable')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_DynamicTable"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_DynamicTable')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_DynamicTable"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DynamicTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DynamicTable"';
END

