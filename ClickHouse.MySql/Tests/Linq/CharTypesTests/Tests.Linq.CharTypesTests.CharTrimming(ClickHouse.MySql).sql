﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	maxOrNull(t1.ID)
FROM
	AllTypes t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
	3
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
	4
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
	5
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
	6
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
	7
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
	8
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
	9
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
	10
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
	11
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
	12
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
	13
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
	14
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
	15
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
	16
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
	17
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
	18
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
	19
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
	20
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
	21
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
	22
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
	23
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID,
	t1.char20DataType,
	t1.ncharDataType
FROM
	AllTypes t1
WHERE
	t1.ID > 2
ORDER BY
	t1.ID

BeforeExecute
-- ClickHouse.MySql ClickHouse

ALTER TABLE
	AllTypes
DELETE WHERE
	ID > 2

