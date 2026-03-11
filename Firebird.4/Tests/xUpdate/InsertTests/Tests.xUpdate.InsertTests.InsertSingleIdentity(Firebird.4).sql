-- Firebird.4 Firebird4

DELETE FROM
	"TestIdentity" "t1"

-- Firebird.4 Firebird4
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "TestIdentity" DEFAULT VALUES
RETURNING
	ID

-- Firebird.4 Firebird4

DELETE FROM
	"TestIdentity" "t1"

