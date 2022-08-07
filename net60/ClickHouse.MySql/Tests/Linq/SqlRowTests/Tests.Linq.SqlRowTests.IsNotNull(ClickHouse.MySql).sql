﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Ints

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Ints
(
	One   Int32,
	Two   Int32,
	Three Int32,
	Four  Int32,
	Five  Int32,
	Nil   Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Ints
(
	One,
	Two,
	Three,
	Four,
	Five,
	Nil
)
VALUES
(toInt32(1),toInt32(2),toInt32(3),toInt32(4),toInt32(5),NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Ints i
WHERE
	i.One IS NOT NULL AND i.Two IS NOT NULL AND i.Three IS NOT NULL

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Ints i
WHERE
	1 = 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Ints i
WHERE
	1 = 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Ints

