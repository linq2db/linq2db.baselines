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
	(i.One <> i.One OR i.Two <> i.One * 2 OR i.Three <> i.Four - 1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(i.One <> i.One OR i.Two <> i.Two OR i.Four <> i.Three)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(i.One <> i.One OR i.Nil <> i.Two OR i.Three <> i.Three)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(1 <> i.One OR i.Nil <> i.Nil OR 4 <> i.Three)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	(1 <> i.One OR NULL >= i.Nil OR 4 <> i.Three)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Ints

