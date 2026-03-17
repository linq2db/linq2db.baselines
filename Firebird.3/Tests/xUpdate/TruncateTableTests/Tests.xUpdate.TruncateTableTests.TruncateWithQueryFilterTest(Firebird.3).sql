-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestTrun')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestTrun"';
END

-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestTrunDetail')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestTrunDetail"';
END

-- Firebird.3 Firebird3

CREATE TABLE "TestTrunDetail"
(
	ID           Int     NOT NULL,
	"TestTrunID" Int     NOT NULL,
	"IsActive"   BOOLEAN NOT NULL,

	CONSTRAINT "PK_TestTrunDetail" PRIMARY KEY (ID)
)

-- Firebird.3 Firebird3

CREATE TABLE "TestTrun"
(
	ID       Int             NOT NULL,
	"Field1" Decimal(18, 10) NOT NULL,

	CONSTRAINT "PK_TestTrun" PRIMARY KEY (ID)
)

-- Firebird.3 Firebird3

DELETE FROM "TestTrun"

-- Firebird.3 Firebird3

DROP TABLE "TestTrun"

-- Firebird.3 Firebird3

DROP TABLE "TestTrunDetail"

