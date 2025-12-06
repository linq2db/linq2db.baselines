-- Firebird.3 Firebird3

DELETE FROM
	"TestIdentity" "t1"

-- Firebird.3 Firebird3
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "TestIdentity" DEFAULT VALUES
RETURNING
	ID

-- Firebird.3 Firebird3

DELETE FROM
	"TestIdentity" "t1"

