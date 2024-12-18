BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_DynamicParent')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_DynamicParent"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_DynamicParent')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_DynamicParent"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DynamicParent')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DynamicParent"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DynamicParent')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "DynamicParent"
			(
				ID Int  NOT NULL,

				CONSTRAINT "PK_DynamicParent" PRIMARY KEY (ID)
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_DynamicParent')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_DynamicParent"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_DynamicParent')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_DynamicParent" FOR "DynamicParent"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW.ID = GEN_ID("GIDENTITY_DynamicParent", 1);
			END
		';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_DynamicChild')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_DynamicChild"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_DynamicChild')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_DynamicChild"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DynamicChild')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DynamicChild"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DynamicChild')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "DynamicChild"
			(
				ID         Int  NOT NULL,
				"ParentID" Int  NOT NULL,

				CONSTRAINT "PK_DynamicChild" PRIMARY KEY (ID)
			)
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_DynamicChild')) THEN
		EXECUTE STATEMENT '
			CREATE GENERATOR "GIDENTITY_DynamicChild"
		';
	IF (NOT EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_DynamicChild')) THEN
		EXECUTE STATEMENT '
			CREATE TRIGGER "TIDENTITY_DynamicChild" FOR "DynamicChild"
			BEFORE INSERT POSITION 0
			AS BEGIN
				NEW.ID = GEN_ID("GIDENTITY_DynamicChild", 1);
			END
		';
END

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"it".ID
FROM
	"DynamicParent" "it"
		LEFT JOIN "DynamicChild" "a_Child" ON "it".ID = "a_Child"."ParentID"
WHERE
	"a_Child".ID = 123 AND "a_Child".ID IS NOT NULL

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_DynamicChild')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_DynamicChild"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_DynamicChild')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_DynamicChild"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DynamicChild')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DynamicChild"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_DynamicParent')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_DynamicParent"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_DynamicParent')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_DynamicParent"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DynamicParent')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DynamicParent"';
END

