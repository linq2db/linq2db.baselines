BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Src

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Src
(
	Int            Int32,
	NullableInt    Nullable(Int32),
	String         Nullable(String),
	NullableString Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Src
(
	Int,
	NullableInt,
	String,
	NullableString
)
VALUES
(2,2,'abc','abc'),
(3,NULL,'def',NULL)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	CASE WHEN s.String = 'abc' OR s.String IS NULL AND 'abc' IS NULL THEN 0 ELSE 1 END = 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	CASE WHEN s.NullableString = 'abc' OR s.NullableString IS NULL AND 'abc' IS NULL THEN 0 ELSE 1 END = 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	CASE WHEN s.String = 'abc' OR s.String IS NULL AND 'abc' IS NULL THEN 0 ELSE 1 END = 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	CASE WHEN s.NullableString = 'abc' OR s.NullableString IS NULL AND 'abc' IS NULL THEN 0 ELSE 1 END = 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Src

