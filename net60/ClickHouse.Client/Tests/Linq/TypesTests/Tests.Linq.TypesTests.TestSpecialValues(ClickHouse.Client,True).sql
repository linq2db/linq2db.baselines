BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	maxOrNull(_.ID)
FROM
	AllTypes _

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO AllTypes
(
	ID,
	floatDataType,
	doubleDataType
)
VALUES
(
	toInt32(1000),
	toFloat32(NaN),
	toFloat64(NaN)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO AllTypes
(
	ID,
	floatDataType,
	doubleDataType
)
VALUES
(
	toInt32(1001),
	toFloat32(-Infinity),
	toFloat64(-Infinity)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO AllTypes
(
	ID,
	floatDataType,
	doubleDataType
)
VALUES
(
	toInt32(1002),
	toFloat32(Infinity),
	toFloat64(Infinity)
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	_.floatDataType,
	_.doubleDataType
FROM
	AllTypes _
WHERE
	_.ID > toInt32(2)
ORDER BY
	_.ID

