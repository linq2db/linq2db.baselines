﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE TestEnumTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE TestEnumTable
(
	Field1  Int32,
	Field11 Nullable(Int32),
	Field2  Nullable(String),
	Field21 String,
	Field3  Int16
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO TestEnumTable
(
	Field1,
	Field11,
	Field2,
	Field21,
	Field3
)
VALUES
(
	toInt32(1),
	toInt32(1),
	'A',
	'A',
	toInt16(0)
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Field1,
	t1.Field11,
	t1.Field2,
	t1.Field21,
	t1.Field3
FROM
	TestEnumTable t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE TestEnumTable

