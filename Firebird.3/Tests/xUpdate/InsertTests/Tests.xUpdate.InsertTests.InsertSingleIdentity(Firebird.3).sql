BeforeExecute
-- Firebird.3 Firebird3

DELETE FROM
	"TestIdentity" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "TestIdentity" DEFAULT VALUES
RETURNING
	ID

BeforeExecute
-- Firebird.3 Firebird3

DELETE FROM
	"TestIdentity" "t1"

