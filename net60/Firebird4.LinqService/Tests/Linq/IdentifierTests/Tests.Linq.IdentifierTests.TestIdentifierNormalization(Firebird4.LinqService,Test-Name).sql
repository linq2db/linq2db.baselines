BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Test-Name')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Test-Name"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Test-Name')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Test-Name"
			(
				"Test-Name" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird4 Firebird
DECLARE @TestName Integer -- Int32
SET     @TestName = 2

UPDATE
	"Test-Name"
SET
	"Test-Name"."Test-Name" = @TestName
WHERE
	"Test-Name"."Test-Name" = 1

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Test-Name')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Test-Name"';
END

