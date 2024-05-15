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
	NULLIF(s.String, 'abc')
FROM
	Src s
ORDER BY
	s.Int

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	NULLIF(s.String, 'xyz')
FROM
	Src s
ORDER BY
	s.Int

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	NULLIF(s.String, NULL)
FROM
	Src s
ORDER BY
	s.Int

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	NULLIF(s.NullableString, 'abc')
FROM
	Src s
ORDER BY
	s.Int

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	NULLIF(s.NullableString, 'xyz')
FROM
	Src s
ORDER BY
	s.Int

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	NULLIF(s.NullableString, NULL)
FROM
	Src s
ORDER BY
	s.Int

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Src

