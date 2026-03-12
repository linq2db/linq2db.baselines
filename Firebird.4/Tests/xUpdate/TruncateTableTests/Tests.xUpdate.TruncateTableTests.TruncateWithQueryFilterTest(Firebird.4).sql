-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestTrun')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestTrun"';
END

-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TestTrunDetail')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TestTrunDetail"';
END

-- Firebird.4 Firebird4

CREATE TABLE "TestTrunDetail"
(
	ID           Int     NOT NULL,
	"TestTrunID" Int     NOT NULL,
	"IsActive"   BOOLEAN NOT NULL,

	CONSTRAINT "PK_TestTrunDetail" PRIMARY KEY (ID)
)

-- Firebird.4 Firebird4

CREATE TABLE "TestTrun"
(
	ID       Int             NOT NULL,
	"Field1" Decimal(18, 10) NOT NULL,

	CONSTRAINT "PK_TestTrun" PRIMARY KEY (ID)
)

-- Firebird.4 Firebird4

DELETE FROM "TestTrun"

-- Firebird.4 Firebird4

DROP TABLE "TestTrun"

-- Firebird.4 Firebird4

DROP TABLE "TestTrunDetail"

