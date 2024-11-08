BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS my_table

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS my_table
(
	my_col1      Nullable(String),
	my_other_col Nullable(String),
	itemType     Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

INSERT INTO my_table
(
	my_col1,
	my_other_col,
	itemType
)
VALUES
(
	NULL,
	NULL,
	1
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.my_col1,
	t1.my_other_col,
	t1.itemType
FROM
	my_table t1
WHERE
	t1.itemType <> 1
LIMIT 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	my_table t1
WHERE
	t1.itemType <> 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS my_table

