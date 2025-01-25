BeforeExecute
-- Firebird.5 Firebird4

DELETE FROM
	"TestIdentity" "t1"

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "TestIdentity" DEFAULT VALUES
RETURNING
	ID

BeforeExecute
-- Firebird.5 Firebird4

DELETE FROM
	"TestIdentity" "t1"

