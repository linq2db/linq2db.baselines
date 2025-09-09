BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestTrun')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestTrun"';
END

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

CREATE TABLE "TestTrun"
(
	ID       Int             NOT NULL,
	"Field1" Decimal(18, 10) NOT NULL,

	CONSTRAINT "PK_TestTrun" PRIMARY KEY (ID)
)

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

DELETE FROM "TestTrun"

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

DROP TABLE "TestTrun"

