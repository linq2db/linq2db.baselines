BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.itemType,
	t1.my_col1,
	t1.my_other_col
FROM
	my_table t1
WHERE
	t1.itemType <> 1
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	my_table t1
WHERE
	t1.itemType <> 1

