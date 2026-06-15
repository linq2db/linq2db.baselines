-- YDB Ydb

SELECT
	Unwrap(CAST(Unwrap(CAST(p.ID AS Uint8)) AS Text)) as Length_1
FROM
	LinqDataTypes p
WHERE
	Unwrap(CAST(Unicode::GetLength(Unwrap(CAST(Unwrap(CAST(p.ID AS Uint8)) AS Text))) AS Int32)) > 0

