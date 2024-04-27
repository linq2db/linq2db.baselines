BeforeExecute
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
(
	1,
	2,
	3,
	4,
	5,
	NULL
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	NOT ((i.One > i.One OR i.One = i.One AND i.Two >= i.One * 2) AND (i.One < i.One OR i.One = i.One AND i.Two <= i.One + i.One))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	NOT ((i.One > i.One OR i.One = i.One AND i.Three >= i.One) AND (i.One < i.One OR i.One = i.One AND i.Three <= i.Four))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	NOT ((i.One > i.One OR i.One = i.One AND i.Two >= i.Three) AND (i.One < i.One OR i.One = i.One AND i.Two <= i.Two))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	NOT ((i.Two > i.One OR i.Two = i.One AND i.Five >= i.One) AND (i.Two < i.Three OR i.Two = i.Three AND i.Five <= i.Two))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	NOT ((i.Two > i.One OR i.Two = i.One AND i.Five >= i.One) AND (i.Two < i.Two OR i.Two = i.Two AND i.Five <= i.Two))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	NOT ((i.Two > i.One OR i.Two = i.One AND i.Nil >= i.One) AND (i.Two < i.Three OR i.Two = i.Three AND i.Nil <= i.One))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	NOT ((i.Two > i.Two OR i.Two = i.Two AND i.Nil >= i.One) AND (i.Two < i.Two OR i.Two = i.Two AND i.Nil <= i.Three))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	NOT ((i.Two > i.One OR i.Two = i.One AND i.Five >= i.Nil) AND (i.Two < i.Three OR i.Two = i.Three AND i.Five <= i.Nil))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	NOT ((i.Two > i.One OR i.Two = i.One AND i.Nil >= i.Nil) AND (i.Two < i.Three OR i.Two = i.Three AND i.Nil <= i.Nil))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	NOT ((i.Two > i.Nil OR i.Two = i.Nil AND i.Two >= i.One) AND (i.Two < i.Three OR i.Two = i.Three AND i.Two <= i.Five))

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Ints

