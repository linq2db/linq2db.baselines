-- ClickHouse.Octonica ClickHouse

CREATE TEMPORARY TABLE IF NOT EXISTS temp_table1
(
	ID    Int32,
	Value Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

INSERT INTO temp_table1(ID, Value) VALUES

-- ClickHouse.Octonica ClickHouse

CREATE TEMPORARY TABLE IF NOT EXISTS temp_table2
(
	ID    Int32,
	Value Int32,

	PRIMARY KEY (ID)
)
ENGINE = MergeTree()
ORDER BY ID

-- ClickHouse.Octonica ClickHouse

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

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ID,
	t1.Value
FROM
	temp_table1 t1

-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ID,
	t1.Value
FROM
	temp_table2 t1

-- ClickHouse.Octonica ClickHouse

INSERT INTO temp_table1
(
	ID,
	Value
)
VALUES
(2,3)

-- ClickHouse.Octonica ClickHouse

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

INSERT INTO temp_table1(ID, Value) VALUES

-- ClickHouse.Octonica ClickHouse

TRUNCATE TABLE temp_table1

-- ClickHouse.Octonica ClickHouse

TRUNCATE TABLE temp_table2

-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS temp_table2

-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS temp_table1

