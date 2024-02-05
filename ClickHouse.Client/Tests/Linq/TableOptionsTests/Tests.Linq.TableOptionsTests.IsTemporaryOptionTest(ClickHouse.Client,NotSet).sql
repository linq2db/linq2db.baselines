﻿BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TEMPORARY TABLE temp_table1
(
	ID    Int32,
	Value Int32
)
ENGINE = Memory()

BeforeExecute
INSERT ASYNC BULK temp_table1(ID, Value)

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TEMPORARY TABLE temp_table2
(
	ID    Int32,
	Value Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	t1.ID,
	t1.Value
FROM
	temp_table1 t1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ID,
	t1.Value
FROM
	temp_table2 t1

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO temp_table1
(
	ID,
	Value
)
VALUES
(toInt32(2),toInt32(3))

BeforeExecute
-- ClickHouse.Client ClickHouse

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
INSERT ASYNC BULK temp_table1(ID, Value)

BeforeExecute
-- ClickHouse.Client ClickHouse

TRUNCATE TABLE temp_table1

BeforeExecute
-- ClickHouse.Client ClickHouse

TRUNCATE TABLE temp_table2

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS temp_table2

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS temp_table1

