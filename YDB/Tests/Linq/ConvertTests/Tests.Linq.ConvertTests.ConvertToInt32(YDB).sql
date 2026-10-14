-- YDB Ydb
SELECT
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) AS Double)) AS Int32)) as c1
FROM
	LinqDataTypes p
WHERE
	Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(Unwrap(CAST(p.MoneyValue AS Decimal(6,2))) AS Decimal(6,0))) AS Decimal(6,2))) AS Double)) AS Int32)) > 0

