-- YDB Ydb
SELECT
	x.Id as Id
FROM
	Rate x
WHERE
	x.Usd > Decimal('20', 22, 9)

