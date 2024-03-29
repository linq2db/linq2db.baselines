﻿BeforeExecute
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
	toInt32(0),
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
	'MyCol2',
	toInt32(1),
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	o.my_col1,
	o.itemType,
	o.my_other_col
FROM
	my_table o
WHERE
	o.my_col1 = 'MyCol1'
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	my_table t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS my_table

