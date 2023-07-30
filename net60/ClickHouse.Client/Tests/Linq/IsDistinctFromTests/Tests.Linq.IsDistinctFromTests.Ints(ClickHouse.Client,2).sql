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
(toInt32(2),toInt32(2),'abc','abc'),
(toInt32(3),NULL,'def',NULL)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Src s
WHERE
	CASE WHEN s.Int = toInt32(2) OR s.Int IS NULL AND toInt32(2) IS NULL THEN 0 ELSE 1 END = 1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Src s
WHERE
	CASE WHEN s.NullableInt = toInt32(2) OR s.NullableInt IS NULL AND toInt32(2) IS NULL THEN 0 ELSE 1 END = 1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Src s
WHERE
	CASE WHEN s.Int = toInt32(2) OR s.Int IS NULL AND toInt32(2) IS NULL THEN 0 ELSE 1 END = 0

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Src s
WHERE
	CASE WHEN s.NullableInt = toInt32(2) OR s.NullableInt IS NULL AND toInt32(2) IS NULL THEN 0 ELSE 1 END = 0

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Src

