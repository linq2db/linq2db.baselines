BeforeExecute
-- Firebird4 Firebird

DELETE FROM
	"TestIdentity" "t1"

BeforeExecute
-- Firebird4 Firebird
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "TestIdentity" DEFAULT VALUES
RETURNING
	ID

BeforeExecute
-- Firebird4 Firebird

DELETE FROM
	"TestIdentity" "t1"

