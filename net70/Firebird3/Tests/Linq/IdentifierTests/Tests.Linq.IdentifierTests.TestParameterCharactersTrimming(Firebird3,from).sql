BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'testparams')) THEN
		EXECUTE STATEMENT 'DROP TABLE "testparams"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'testparams')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "testparams"
			(
				"from" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird3 Firebird
DECLARE @from Integer -- Int32
SET     @from = 2

UPDATE
	"testparams"
SET
	"testparams"."from" = @from
WHERE
	"testparams"."from" = 1

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'testparams')) THEN
		EXECUTE STATEMENT 'DROP TABLE "testparams"';
END

