-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_TestIdentityDropTable')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_TestIdentityDropTable"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_TestIdentityDropTable')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_TestIdentityDropTable"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestIdentityDropTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestIdentityDropTable"';
END

-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_TestIdentityDropTable')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_TestIdentityDropTable"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_TestIdentityDropTable')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_TestIdentityDropTable"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestIdentityDropTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestIdentityDropTable"';
END

-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT '
		CREATE TABLE "TestIdentityDropTable"
		(
			"Field" Int  NOT NULL
		)
	';
	EXECUTE STATEMENT '
		CREATE GENERATOR "GIDENTITY_TestIdentityDropTable"
	';
	EXECUTE STATEMENT '
		CREATE TRIGGER "TIDENTITY_TestIdentityDropTable" FOR "TestIdentityDropTable"
		BEFORE INSERT POSITION 0
		AS BEGIN
			NEW."Field" = GEN_ID("GIDENTITY_TestIdentityDropTable", 1);
		END
	';
END

-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_TestIdentityDropTable')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_TestIdentityDropTable"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_TestIdentityDropTable')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_TestIdentityDropTable"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestIdentityDropTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestIdentityDropTable"';
END

