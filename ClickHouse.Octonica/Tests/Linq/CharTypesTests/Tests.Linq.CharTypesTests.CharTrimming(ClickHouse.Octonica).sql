﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	maxOrNull(_.ID)
FROM
	AllTypes _

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType,
	ID
)
VALUES
(
	' ',
	' ',
	toInt32(3)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType,
	ID
)
VALUES
(
	'	',
	'	',
	toInt32(4)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType,
	ID
)
VALUES
(
	'
',
	'
',
	toInt32(5)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType,
	ID
)
VALUES
(
	'',
	'',
	toInt32(6)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType,
	ID
)
VALUES
(
	'',
	'',
	toInt32(7)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType,
	ID
)
VALUES
(
	'',
	'',
	toInt32(8)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType,
	ID
)
VALUES
(
	' ',
	' ',
	toInt32(9)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType,
	ID
)
VALUES
(
	' ',
	' ',
	toInt32(10)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType,
	ID
)
VALUES
(
	' ',
	' ',
	toInt32(11)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType,
	ID
)
VALUES
(
	' ',
	' ',
	toInt32(12)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType,
	ID
)
VALUES
(
	' ',
	' ',
	toInt32(13)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType,
	ID
)
VALUES
(
	' ',
	' ',
	toInt32(14)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType,
	ID
)
VALUES
(
	' ',
	' ',
	toInt32(15)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType,
	ID
)
VALUES
(
	' ',
	' ',
	toInt32(16)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType,
	ID
)
VALUES
(
	' ',
	' ',
	toInt32(17)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType,
	ID
)
VALUES
(
	' ',
	' ',
	toInt32(18)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType,
	ID
)
VALUES
(
	' ',
	' ',
	toInt32(19)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType,
	ID
)
VALUES
(
	' ',
	' ',
	toInt32(20)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType,
	ID
)
VALUES
(
	'　',
	' ',
	toInt32(21)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType,
	ID
)
VALUES
(
	' ',
	' ',
	toInt32(22)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO AllTypes
(
	ncharDataType,
	char20DataType,
	ID
)
VALUES
(
	NULL,
	NULL,
	toInt32(23)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	_.ID,
	_.char20DataType,
	_.ncharDataType
FROM
	AllTypes _
WHERE
	_.ID > toInt32(2)
ORDER BY
	_.ID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

ALTER TABLE
	AllTypes
DELETE WHERE
	ID > toInt32(2)

