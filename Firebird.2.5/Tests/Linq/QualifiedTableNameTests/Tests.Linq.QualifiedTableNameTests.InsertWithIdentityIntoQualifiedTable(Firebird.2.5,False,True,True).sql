-- Firebird.2.5 Firebird
DECLARE @Value Integer -- Int32
SET     @Value = 10
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "QualifiedIdTable"
(
	"Value"
)
VALUES
(
	@Value
)
RETURNING
	ID

