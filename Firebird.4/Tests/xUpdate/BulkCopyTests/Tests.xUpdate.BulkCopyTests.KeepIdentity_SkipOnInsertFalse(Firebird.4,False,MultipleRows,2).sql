-- Firebird.4 Firebird4
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

-- Firebird.4 Firebird4

INSERT INTO "AllTypes"
(
	"intDataType"
)
SELECT 200 FROM rdb$database UNION ALL
SELECT 300 FROM rdb$database

-- Firebird.4 Firebird4
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

-- Firebird.4 Firebird4
DECLARE @lastId Integer -- Int32
SET     @lastId = 3

DELETE FROM
	"AllTypes" "t1"
WHERE
	"t1".ID >= @lastId

