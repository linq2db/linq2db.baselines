BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

DELETE FROM
	"TestIdentity" "t1"

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "TestIdentity" DEFAULT VALUES
RETURNING
	ID

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

DELETE FROM
	"TestIdentity" "t1"

