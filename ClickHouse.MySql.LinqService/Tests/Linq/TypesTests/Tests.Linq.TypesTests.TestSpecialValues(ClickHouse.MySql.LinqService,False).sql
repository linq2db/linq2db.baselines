BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	maxOrNull(_.ID)
FROM
	AllTypes _

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

SELECT
	_.floatDataType,
	_.doubleDataType
FROM
	AllTypes _
WHERE
	_.ID > 2
ORDER BY
	_.ID

