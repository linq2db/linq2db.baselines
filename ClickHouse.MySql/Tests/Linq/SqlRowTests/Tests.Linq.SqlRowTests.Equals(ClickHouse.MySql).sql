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
(1,2,3,4,5,NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Ints i
WHERE
	i.One = i.One AND i.Two = i.One * 2 AND i.Three = i.Four - 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Ints i
WHERE
	i.One = i.One AND i.Two = i.Two AND i.Four = i.Three

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Ints i
WHERE
	i.One = i.One AND i.Nil = i.Two AND i.Three = i.Three

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Ints i
WHERE
	1 = i.One AND i.Nil = i.Nil AND 3 = i.Three

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Count(*)
FROM
	Ints i
WHERE
	1 = i.One AND NULL >= i.Nil AND 3 = i.Three

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Ints

