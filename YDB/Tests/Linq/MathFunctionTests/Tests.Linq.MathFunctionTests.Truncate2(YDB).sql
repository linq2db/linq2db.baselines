-- YDB Ydb
SELECT
	t.c1 as c1
FROM
	(
		SELECT
			Math::Trunc(Unwrap(CAST(-p.MoneyValue AS Double))) as c1
		FROM
			LinqDataTypes p
	) t
WHERE
	t.c1 <> Double('0.10000000000000001')

