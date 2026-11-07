-- YDB Ydb
SELECT
	t.c1 as c1
FROM
	(
		SELECT
			CAST(CAST(Math::Trunc(Unwrap(CAST(p.MoneyValue AS Double))) AS Text) AS Decimal(6,2)) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> Decimal('0.1', 22, 9)

