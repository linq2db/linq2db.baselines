BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS my_table

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS my_table
(
	my_col1      Nullable(String),
	itemType     Int32,
	my_other_col Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO my_table
(
	my_col1,
	itemType,
	my_other_col
)
VALUES
(
	'MyCol1',
	0,
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO my_table
(
	my_col1,
	itemType,
	my_other_col
)
VALUES
(
	NULL,
	1,
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN t1.itemType = 1 THEN true
		ELSE false
	END,
	t1.my_col1,
	t1.itemType,
	t1.my_other_col
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

