-- YDB Ydb

SELECT
	t.c1 as c1
FROM
	(
		SELECT
			CASE
				WHEN Unwrap(CAST(p.MoneyValue AS Double)) >= Double('0')
					THEN Math::Round(Unwrap(CAST(p.MoneyValue AS Double)))
				ELSE -Math::Round(-Unwrap(CAST(p.MoneyValue AS Double)))
			END as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> Double('0')

