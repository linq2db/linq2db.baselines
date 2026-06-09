-- YDB Ydb

SELECT
	t.Value_1 as Value_1
FROM
	(
		SELECT
			CAST(CAST(Math::Trunc(Unwrap(CAST(p.MoneyValue AS Double))) AS Text) AS Decimal(6,2)) as Value_1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.Value_1 <> Decimal('0.1', 22, 9)

