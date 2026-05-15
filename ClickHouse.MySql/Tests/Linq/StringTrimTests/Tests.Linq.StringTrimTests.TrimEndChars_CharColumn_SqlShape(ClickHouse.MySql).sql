-- ClickHouse.MySql ClickHouse

SELECT
	trim(TRAILING '.+' FROM t.CharColumn)
FROM
	StringTrimTable t

