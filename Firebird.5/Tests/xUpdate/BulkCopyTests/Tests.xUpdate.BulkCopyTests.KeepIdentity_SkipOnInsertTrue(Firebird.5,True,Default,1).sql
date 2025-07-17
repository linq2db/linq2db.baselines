BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Value Integer -- Int32
SET     @Value = 0
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "AllTypes"
(
	"intDataType"
)
VALUES
(
	@Value
)
RETURNING
	ID

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @lastId Integer -- Int32
SET     @lastId = 3

DELETE FROM
	"AllTypes" "t1"
WHERE
	"t1".ID >= @lastId

