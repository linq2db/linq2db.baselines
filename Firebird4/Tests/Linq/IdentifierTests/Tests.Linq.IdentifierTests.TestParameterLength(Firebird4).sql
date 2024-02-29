BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'testparams')) THEN
		EXECUTE STATEMENT 'DROP TABLE "testparams"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'testparams')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "testparams"
			(
				"col1"    Int NOT NULL,
				"Column1" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird4 Firebird
DECLARE @A123456789b123456789c123456789d123456789e123456789 Integer -- Int32
SET     @A123456789b123456789c123456789d123456789e123456789 = 2

UPDATE
	"testparams"
SET
	"testparams"."col1" = @A123456789b123456789c123456789d123456789e123456789
WHERE
	"testparams"."Column1" = 1

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'testparams')) THEN
		EXECUTE STATEMENT 'DROP TABLE "testparams"';
END

