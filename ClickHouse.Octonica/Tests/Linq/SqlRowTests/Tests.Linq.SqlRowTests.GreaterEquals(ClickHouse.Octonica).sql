BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Ints

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(i.Two > i.One * 2 OR i.Two = i.One * 2 AND i.Three >= i.Four - 1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	i.Four >= i.Three

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(i.Two > i.Five OR i.Two = i.Five AND i.Four >= i.Three)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(i.Nil > i.Two OR i.Nil = i.Two AND i.Four >= i.Three)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(2 > i.One OR 2 = i.One AND NULL > i.Two)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Ints

