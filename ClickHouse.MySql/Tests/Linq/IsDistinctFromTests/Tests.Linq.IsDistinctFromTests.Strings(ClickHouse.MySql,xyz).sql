BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Src

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Src
(
	Int            Int32,
	NullableInt    Nullable(Int32),
	String         Nullable(String),
	NullableString Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	CASE WHEN s.String = 'xyz' OR s.String IS NULL AND 'xyz' IS NULL THEN 0 ELSE 1 END = 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	CASE WHEN s.NullableString = 'xyz' OR s.NullableString IS NULL AND 'xyz' IS NULL THEN 0 ELSE 1 END = 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	CASE WHEN s.String = 'xyz' OR s.String IS NULL AND 'xyz' IS NULL THEN 0 ELSE 1 END = 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Src s
WHERE
	CASE WHEN s.NullableString = 'xyz' OR s.NullableString IS NULL AND 'xyz' IS NULL THEN 0 ELSE 1 END = 0

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Src

