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
(toInt32(2),toInt32(2),'abc','abc'),
(toInt32(3),NULL,'def',NULL)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	NULLIF(s.Int, toInt32(2))
FROM
	Src s
ORDER BY
	s.Int

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	NULLIF(s.Int, toInt32(4))
FROM
	Src s
ORDER BY
	s.Int

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	NULLIF(s.Int, NULL)
FROM
	Src s
ORDER BY
	s.Int

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	NULLIF(s.NullableInt, toInt32(2))
FROM
	Src s
ORDER BY
	s.Int

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	NULLIF(s.NullableInt, toInt32(4))
FROM
	Src s
ORDER BY
	s.Int

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	NULLIF(s.NullableInt, NULL)
FROM
	Src s
ORDER BY
	s.Int

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Src

