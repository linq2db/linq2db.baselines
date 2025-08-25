BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestTrun')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestTrun"';
END

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

CREATE TABLE "TestTrun"
(
	ID       Int             NOT NULL,
	"Field1" Decimal(18, 10) NOT NULL,

	CONSTRAINT "PK_TestTrun" PRIMARY KEY (ID)
)

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

DELETE FROM "TestTrun"

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

DROP TABLE "TestTrun"

