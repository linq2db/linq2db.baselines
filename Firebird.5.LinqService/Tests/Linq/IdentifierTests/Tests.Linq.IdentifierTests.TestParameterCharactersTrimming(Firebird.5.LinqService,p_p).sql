BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'testparams')) THEN
		EXECUTE STATEMENT 'DROP TABLE "testparams"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'testparams')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "testparams"
			(
				"p_p" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @p_p Integer -- Int32
SET     @p_p = 2

UPDATE
	"testparams" "t"
SET
	"p_p" = CAST(@p_p AS Int)
WHERE
	"t"."p_p" = 1

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'testparams')) THEN
		EXECUTE STATEMENT 'DROP TABLE "testparams"';
END

