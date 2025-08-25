BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

DELETE FROM
	"TestIdentity" "t1"

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "TestIdentity" DEFAULT VALUES
RETURNING
	ID

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

DELETE FROM
	"TestIdentity" "t1"

