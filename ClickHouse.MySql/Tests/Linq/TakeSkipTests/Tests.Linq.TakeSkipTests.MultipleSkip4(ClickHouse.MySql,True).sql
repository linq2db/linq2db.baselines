BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	TakeSkipClass t1
ORDER BY
	t1.Value
LIMIT 6, 18446744073709551615

