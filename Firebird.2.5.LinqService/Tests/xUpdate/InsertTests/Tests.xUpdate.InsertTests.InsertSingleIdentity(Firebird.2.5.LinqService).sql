BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"TestIdentity" "t1"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "TestIdentity" DEFAULT VALUES
RETURNING
	ID

BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"TestIdentity" "t1"

