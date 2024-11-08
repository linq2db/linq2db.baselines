BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS my_table

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS my_table
(
	my_col1      Nullable(String),
	my_other_col Nullable(String),
	itemType     Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO my_table
(
	my_col1,
	my_other_col,
	itemType
)
VALUES
(
	'MyCol1',
	NULL,
	0
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO my_table
(
	my_col1,
	my_other_col,
	itemType
)
VALUES
(
	'MyCol2',
	NULL,
	1
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	o.my_col1,
	o.my_other_col,
	o.itemType
FROM
	my_table o
WHERE
	o.my_col1 = 'MyCol1'
LIMIT 1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	my_table t1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS my_table

