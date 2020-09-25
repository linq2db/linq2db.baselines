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
-- Firebird (asynchronously)
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
-- Firebird (asynchronously)
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
SET     @lastId = 99

SELECT
	"t1".ID,
	"t1"."intDataType"
FROM
	"AllTypes" "t1"
WHERE
	"t1".ID > @lastId
ORDER BY
	"t1".ID

BeforeExecute
-- Firebird
DECLARE @lastId Integer -- Int32
SET     @lastId = 99

DELETE FROM
	"AllTypes" "t1"
WHERE
	"t1".ID >= @lastId

