﻿BeforeExecute
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
(
	toInt32(1),
	toInt32(2),
	toInt32(3),
	toInt32(4),
	toInt32(5),
	NULL
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	Ints i
WHERE
	(i.One, i.Two) BETWEEN (i.One, i.One * toInt32(2)) AND (i.One, i.One + i.One)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	Ints i
WHERE
	(i.One, i.Three) BETWEEN (i.One, i.One) AND (i.One, i.Four)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	Ints i
WHERE
	(i.One, i.Two) BETWEEN (i.One, i.Three) AND (i.One, i.Two)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	Ints i
WHERE
	(i.Two, i.Five) BETWEEN (i.One, i.One) AND (i.Three, i.Two)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	Ints i
WHERE
	(i.Two, i.Five) BETWEEN (i.One, i.One) AND (i.Two, i.Two)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	Ints i
WHERE
	(i.Two, i.Nil) BETWEEN (i.One, i.One) AND (i.Three, i.One)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	Ints i
WHERE
	(i.Two, i.Nil) BETWEEN (i.Two, i.One) AND (i.Two, i.Three)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	Ints i
WHERE
	(i.Two, i.Five) BETWEEN (i.One, i.Nil) AND (i.Three, i.Nil)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	Ints i
WHERE
	(i.Two, i.Nil) BETWEEN (i.One, i.Nil) AND (i.Three, i.Nil)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	Ints i
WHERE
	(i.Two, i.Two) BETWEEN (i.Nil, i.One) AND (i.Three, i.Five)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Ints

