-- ClickHouse.MySql ClickHouse

SELECT
	trim(LEADING '.+' FROM t.CharColumn)
FROM
	StringTrimTable t

