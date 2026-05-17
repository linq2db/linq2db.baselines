-- DuckDB

SELECT
	p.GuidValue
FROM
	LinqDataTypes p
WHERE
	p.GuidValue <> uuid()

