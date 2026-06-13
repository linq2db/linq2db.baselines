-- YDB Ydb

SELECT
	t.c1 as c1
FROM
	(
		SELECT
			Unwrap(CAST(Unwrap(CAST(CASE
				WHEN Unwrap(CAST(p.MoneyValue AS Double)) >= Double('0')
					THEN Math::Round(Unwrap(CAST(p.MoneyValue AS Double)))
				ELSE -Math::Round(-Unwrap(CAST(p.MoneyValue AS Double)))
			END AS Text)) AS Decimal(6,2))) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> Decimal('0', 6, 2)

