-- DuckDB
SELECT DISTINCT ON (t1.Country)
	t1.Id,
	t1.CustomerId,
	t1.Country,
	t1.Region
FROM
	NullableKeyData t1
ORDER BY
	t1.Country,
	t1.CustomerId

-- DuckDB
SELECT
	t1.Id,
	t1.CustomerId,
	t1.Country,
	t1.Region
FROM
	NullableKeyData t1

