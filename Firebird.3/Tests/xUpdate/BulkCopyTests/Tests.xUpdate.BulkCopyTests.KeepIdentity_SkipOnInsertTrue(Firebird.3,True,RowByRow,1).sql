-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3
DECLARE @lastId Integer -- Int32
SET     @lastId = 3

DELETE FROM
	"AllTypes" "t1"
WHERE
	"t1".ID >= @lastId

