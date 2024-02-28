BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestDropTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestDropTable"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestDropTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestDropTable"';
END

BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "TestDropTable"
(
	"Field" Int NOT NULL
)

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestDropTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestDropTable"';
END

