BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = _utf8 x'546573742DD098D0BCD18F')) THEN
		EXECUTE STATEMENT _utf8 x'44524F50205441424C452022546573742DD098D0BCD18F22';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = _utf8 x'546573742DD098D0BCD18F')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Test-Имя"
			(
				"Test-Имя" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird3 Firebird
DECLARE @Test Integer -- Int32
SET     @Test = 2

UPDATE
	"Test-Имя"
SET
	"Test-Имя"."Test-Имя" = @Test
WHERE
	"Test-Имя"."Test-Имя" = 1

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = _utf8 x'546573742DD098D0BCD18F')) THEN
		EXECUTE STATEMENT _utf8 x'44524F50205441424C452022546573742DD098D0BCD18F22';
END

