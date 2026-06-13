-- YDB Ydb

SELECT
	t.c1 as c1
FROM
	(
		SELECT
			MIN_OF(Unwrap(CAST(p.MoneyValue AS Decimal(22,9))), Unwrap(CAST(Decimal('5', 22, 9) AS Decimal(22,9)))) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> Decimal('0', 22, 9)

