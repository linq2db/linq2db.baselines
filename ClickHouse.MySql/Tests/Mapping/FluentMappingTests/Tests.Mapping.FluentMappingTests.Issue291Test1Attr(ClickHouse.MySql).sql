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

-- ClickHouse.MySql ClickHouse

INSERT INTO my_table
(
	my_col1,
	itemType,
	my_other_col
)
VALUES
(
	'MyCol2',
	1,
	NULL
)

-- ClickHouse.MySql ClickHouse

SELECT
	o.my_col1,
	o.itemType,
	o.my_other_col
FROM
	my_table o
WHERE
	o.my_col1 = 'MyCol1'
LIMIT 1

-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	my_table t1

