BeforeExecute
-- ClickHouse.Driver ClickHouse

CREATE TEMPORARY TABLE temp_table1
(
	ID    Int32,
	Value Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
INSERT ASYNC BULK temp_table1(ID, Value)

BeforeExecute
-- ClickHouse.Driver ClickHouse

CREATE TEMPORARY TABLE temp_table2
(
	ID    Int32,
	Value Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Driver ClickHouse

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
-- ClickHouse.Driver ClickHouse

SELECT
	t1.ID,
	t1.Value
FROM
	temp_table1 t1

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.ID,
	t1.Value
FROM
	temp_table2 t1

BeforeExecute
-- ClickHouse.Driver ClickHouse

INSERT INTO temp_table1
(
	ID,
	Value
)
VALUES
(2,3)

BeforeExecute
-- ClickHouse.Driver ClickHouse

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
INSERT ASYNC BULK temp_table1(ID, Value)

BeforeExecute
-- ClickHouse.Driver ClickHouse

TRUNCATE TABLE temp_table1

BeforeExecute
-- ClickHouse.Driver ClickHouse

TRUNCATE TABLE temp_table2

BeforeExecute
-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS temp_table2

BeforeExecute
-- ClickHouse.Driver ClickHouse

DROP TABLE IF EXISTS temp_table1

