-- ClickHouse.MySql ClickHouse

SELECT
	RANK() OVER(PARTITION BY e.Value1 ORDER BY e.Id, e.Value1 DESC),
	e.Id,
	e.Value1
FROM
	SampleClass e

