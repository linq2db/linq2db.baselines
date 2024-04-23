﻿BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS my_table

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS my_table
(
	my_col1      Nullable(String),
	itemType     Int32,
	my_other_col Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	my_table t1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS my_table

