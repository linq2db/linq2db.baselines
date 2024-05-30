BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Src

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Src
(
	Int            Int32,
	NullableInt    Nullable(Int32),
	String         Nullable(String),
	NullableString Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Src
(
	Int,
	NullableInt,
	String,
	NullableString
)
VALUES
(
	2,
	2,
	'abc',
	'abc'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Src
(
	Int,
	NullableInt,
	String,
	NullableString
)
VALUES
(
	3,
	NULL,
	'def',
	NULL
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	Src s

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableInt IS NOT NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	1 = 0

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	s.NullableInt IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Src

