﻿BeforeExecute
--  ClickHouse.Octonica ClickHouse

SELECT
	maxOrNull(t1.ID)
FROM
	AllTypes t1

BeforeExecute
--  ClickHouse.Octonica ClickHouse

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
--  ClickHouse.Octonica ClickHouse

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
--  ClickHouse.Octonica ClickHouse

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
--  ClickHouse.Octonica ClickHouse

SELECT
	t1.floatDataType,
	t1.doubleDataType
FROM
	AllTypes t1
WHERE
	t1.ID > 2
ORDER BY
	t1.ID

