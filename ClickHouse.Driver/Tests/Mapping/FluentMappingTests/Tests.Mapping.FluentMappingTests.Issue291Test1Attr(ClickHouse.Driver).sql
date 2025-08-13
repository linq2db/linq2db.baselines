BeforeExecute
-- ClickHouse.Driver ClickHouse

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
-- ClickHouse.Driver ClickHouse

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

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	o.my_col1,
	o.itemType,
	o.my_other_col
FROM
	my_table o
WHERE
	o.my_col1 = 'MyCol1'
LIMIT 1

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	my_table t1

