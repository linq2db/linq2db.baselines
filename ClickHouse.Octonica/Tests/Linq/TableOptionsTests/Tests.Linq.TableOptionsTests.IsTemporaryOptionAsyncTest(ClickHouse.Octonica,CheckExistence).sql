BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

CREATE TEMPORARY TABLE IF NOT EXISTS temp_table1
(
	ID    Int32,
	Value Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
INSERT INTO temp_table1(ID, Value) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

CREATE TEMPORARY TABLE IF NOT EXISTS temp_table2
(
	ID    Int32,
	Value Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

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
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ID,
	t1.Value
FROM
	temp_table1 t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ID,
	t1.Value
FROM
	temp_table2 t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

INSERT INTO temp_table1
(
	ID,
	Value
)
VALUES
(2,3)

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

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
INSERT INTO temp_table1(ID, Value) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

TRUNCATE TABLE temp_table1

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

TRUNCATE TABLE temp_table2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS temp_table2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS temp_table1

