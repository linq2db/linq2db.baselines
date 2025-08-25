BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

DELETE FROM
	"TestIdentity" "t1"

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "TestIdentity" DEFAULT VALUES
RETURNING
	ID

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

DELETE FROM
	"TestIdentity" "t1"

