-- YDB Ydb

SELECT
	CAST(Re2::Replace('[0.]+$'u)(CAST(Unicode::ReplaceAll(Unwrap(CAST(p.MoneyValue AS Text)), ','u, '.'u) AS String?), '') AS Utf8?) as c1
FROM
	LinqDataTypes p
WHERE
	Unwrap(CAST(Unicode::GetLength(Unwrap(CAST(p.MoneyValue AS Text))) AS Int32)) > 0

