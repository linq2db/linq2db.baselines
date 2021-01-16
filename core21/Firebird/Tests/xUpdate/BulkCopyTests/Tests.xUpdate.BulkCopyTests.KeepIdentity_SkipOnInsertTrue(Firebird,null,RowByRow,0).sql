BeforeExecute
-- Firebird

SET GENERATOR "AllTypesID" TO 2

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
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 200

INSERT INTO "AllTypes"
(
	"intDataType"
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Firebird
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 300

INSERT INTO "AllTypes"
(
	"intDataType"
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Firebird
DECLARE @lastId Integer -- Int32
SET     @lastId = 3

DELETE FROM
	"AllTypes" "t1"
WHERE
	"t1".ID >= @lastId

