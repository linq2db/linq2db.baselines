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
	NULL,
	NULL,
	1
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN t1.itemType = 1 THEN true
		ELSE false
	END,
	t1.my_col1,
	t1.my_other_col,
	t1.itemType
FROM
	my_table t1
WHERE
	t1.itemType <> 1
LIMIT 1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	my_table t1
WHERE
	t1.itemType <> 1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS my_table

