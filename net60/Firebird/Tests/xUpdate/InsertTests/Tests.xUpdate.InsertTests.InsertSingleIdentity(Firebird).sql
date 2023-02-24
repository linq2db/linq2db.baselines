BeforeExecute
-- Firebird

DELETE FROM
	"TestIdentity" "t1"

BeforeExecute
-- Firebird
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "TestIdentity" DEFAULT VALUES
RETURNING
	ID

BeforeExecute
-- Firebird

DELETE FROM
	"TestIdentity" "t1"

