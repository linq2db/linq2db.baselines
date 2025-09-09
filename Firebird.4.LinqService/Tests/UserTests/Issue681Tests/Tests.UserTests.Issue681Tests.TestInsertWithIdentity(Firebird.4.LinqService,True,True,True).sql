BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @Value Integer -- Int32
SET     @Value = 10
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "Issue681Table4"
(
	"Value"
)
VALUES
(
	@Value
)
RETURNING
	ID

