BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TEMPORARY TABLE temp_table1
(
	ID    Int32,
	Value Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO temp_table1
(
	ID,
	Value
)
VALUES
(toInt32(1),toInt32(2))

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TEMPORARY TABLE temp_table2
(
	ID    Int32,
	Value Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO temp_table2
(
	ID,
	Value
)
SELECT
	t1.ID,
	t1.Value
FROM
	temp_table1 t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID,
	t1.Value
FROM
	temp_table1 t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ID,
	t1.Value
FROM
	temp_table2 t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO temp_table1
(
	ID,
	Value
)
VALUES
(toInt32(2),toInt32(3))

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO temp_table1
(
	ID,
	Value
)
VALUES
(
	toInt32(3),
	toInt32(3)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO temp_table1
(
	ID,
	Value
)
VALUES
(toInt32(4),toInt32(5))

BeforeExecute
-- ClickHouse.MySql ClickHouse

TRUNCATE TABLE temp_table1

BeforeExecute
-- ClickHouse.MySql ClickHouse

TRUNCATE TABLE temp_table2

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS temp_table2

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS temp_table1

