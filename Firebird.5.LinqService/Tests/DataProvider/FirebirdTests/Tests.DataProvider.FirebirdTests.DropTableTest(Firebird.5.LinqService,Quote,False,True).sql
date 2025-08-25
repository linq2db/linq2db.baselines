BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestDropTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestDropTable"';
END

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

DROP TABLE "TestDropTable"

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

CREATE TABLE "TestDropTable"
(
	"Field" Int NOT NULL
)

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

DROP TABLE "TestDropTable"

