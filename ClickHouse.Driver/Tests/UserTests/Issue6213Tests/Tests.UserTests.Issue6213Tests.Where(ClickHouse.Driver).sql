-- ClickHouse.Driver ClickHouse
SELECT
	x.Id
FROM
	Rate x
WHERE
	x.Usd > toDecimal128('20', 10)

