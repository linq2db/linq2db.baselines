BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$triggers WHERE rdb$trigger_name = 'TIDENTITY_TestTable')) THEN
		EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_TestTable"';
	IF (EXISTS(SELECT 1 FROM rdb$generators WHERE rdb$generator_name = 'GIDENTITY_TestTable')) THEN
		EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_TestTable"';
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestTable"';
END

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT '
		CREATE TABLE "TestTable"
		(
			ID          Int                                     NOT NULL,
			"Field1"    VarChar(50) CHARACTER SET UNICODE_FSS,
			"Field2"    VarChar(255) CHARACTER SET UNICODE_FSS,
			"CreatedOn" TimeStamp,

			CONSTRAINT "PK_TestTable" PRIMARY KEY (ID)
		)
	';
	EXECUTE STATEMENT '
		CREATE GENERATOR "GIDENTITY_TestTable"
	';
	EXECUTE STATEMENT '
		CREATE TRIGGER "TIDENTITY_TestTable" FOR "TestTable"
		BEFORE INSERT POSITION 0
		AS BEGIN
			NEW.ID = GEN_ID("GIDENTITY_TestTable", 1);
		END
	';
END

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"t1".ID,
	"t1"."Field1",
	"t1"."Field2",
	"t1"."CreatedOn"
FROM
	"TestTable" "t1"

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_TestTable"';
	EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_TestTable"';
	EXECUTE STATEMENT 'DROP TABLE "TestTable"';
END

