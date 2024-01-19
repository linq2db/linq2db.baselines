BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestTrun')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestTrun"';
END

BeforeExecute
-- Firebird

CREATE TABLE "TestTrun"
(
	ID       Int     NOT NULL,
	"Field1" Decimal NOT NULL,

	CONSTRAINT "PK_TestTrun" PRIMARY KEY (ID)
)

BeforeExecute
-- Firebird

DELETE FROM "TestTrun"

BeforeExecute
-- Firebird

DROP TABLE "TestTrun"

