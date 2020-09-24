BeforeExecute
-- Firebird
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 0
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "AllTypes"
(
	"intDataType"
)
VALUES
(
	@Value_1
)
RETURNING
	ID

BeforeExecute
-- Firebird
DECLARE @lastId Integer -- Int32
SET     @lastId = 210

DELETE FROM
	"AllTypes" "t1"
WHERE
	"t1".ID >= @lastId

