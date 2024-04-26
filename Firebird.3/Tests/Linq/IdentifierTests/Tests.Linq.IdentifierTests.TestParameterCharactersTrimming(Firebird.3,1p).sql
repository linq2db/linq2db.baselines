BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'testparams')) THEN
		EXECUTE STATEMENT 'DROP TABLE "testparams"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'testparams')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "testparams"
			(
				"1p" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @p Integer -- Int32
SET     @p = 2

UPDATE
	"testparams" "t"
SET
	"1p" = CAST(@p AS Int)
WHERE
	"t"."1p" = 1

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'testparams')) THEN
		EXECUTE STATEMENT 'DROP TABLE "testparams"';
END

