BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Parent564')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Parent564"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Parent564')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Parent564"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Parent564')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Parent564"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Parent564')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Parent564"
			(
				"Id"          Int                                     NOT NULL,
				"Type"        VarChar(255) CHARACTER SET UNICODE_FSS,
				"StringValue" VarChar(20) CHARACTER SET UNICODE_FSS,
				"IntValue"    Int,

				CONSTRAINT "PK_Parent564" PRIMARY KEY ("Id")
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Parent564')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_Parent564"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Parent564')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_Parent564" FOR "Parent564"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW."Id" = GEN_ID("GIDENTITY_Parent564", 1);
			END
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Type VarChar(9) -- String
SET     @Type = 'Child564A'
DECLARE @StringValue VarChar(9) -- String
SET     @StringValue = 'SomeValue'

INSERT INTO "Parent564"
(
	"Type",
	"StringValue"
)
VALUES
(
	@Type,
	@StringValue
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Type VarChar(9) -- String
SET     @Type = 'Child564B'
DECLARE @IntValue Integer -- Int32
SET     @IntValue = 911

INSERT INTO "Parent564"
(
	"Type",
	"IntValue"
)
VALUES
(
	@Type,
	@IntValue
)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Parent564" "t1"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_Parent564')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Parent564"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_Parent564')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Parent564"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Parent564')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Parent564"';
END

