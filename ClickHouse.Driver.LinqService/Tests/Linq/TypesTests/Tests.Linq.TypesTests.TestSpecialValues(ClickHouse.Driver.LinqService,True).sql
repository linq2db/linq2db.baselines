BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	maxOrNull(t1.ID)
FROM
	AllTypes t1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO AllTypes
(
	ID,
	floatDataType,
	doubleDataType
)
VALUES
(
	1000,
	toFloat32(NaN),
	toFloat64(NaN)
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO AllTypes
(
	ID,
	floatDataType,
	doubleDataType
)
VALUES
(
	1001,
	toFloat32(-Infinity),
	toFloat64(-Infinity)
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO AllTypes
(
	ID,
	floatDataType,
	doubleDataType
)
VALUES
(
	1002,
	toFloat32(Infinity),
	toFloat64(Infinity)
)

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.floatDataType,
	t1.doubleDataType
FROM
	AllTypes t1
WHERE
	t1.ID > 2
ORDER BY
	t1.ID

