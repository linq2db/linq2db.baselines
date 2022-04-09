BeforeExecute
-- Firebird3 Firebird

SET GENERATOR "AllTypesID" TO 2

BeforeExecute
-- Firebird3 Firebird
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
-- Firebird3 Firebird

INSERT INTO "AllTypes"
(
	"intDataType"
)
SELECT 200 FROM rdb$database UNION ALL
SELECT 300 FROM rdb$database

BeforeExecute
-- Firebird3 Firebird
DECLARE @lastId Integer -- Int32
SET     @lastId = 3

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
-- Firebird3 Firebird
DECLARE @lastId Integer -- Int32
SET     @lastId = 3

DELETE FROM
	"AllTypes" "t1"
WHERE
	"t1".ID >= @lastId

