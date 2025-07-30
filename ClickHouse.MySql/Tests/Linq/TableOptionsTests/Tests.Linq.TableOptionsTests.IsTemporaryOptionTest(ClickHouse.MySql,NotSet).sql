﻿BeforeExecute
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
(1,2)

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
(2,3)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO temp_table1
(
	ID,
	Value
)
VALUES
(
	3,
	3
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO temp_table1
(
	ID,
	Value
)
VALUES
(4,5)

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

