-- DuckDB

SELECT
	t1.ID,
	t1.Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			CAST(NULL AS DECIMAL) as Value_1
		FROM
			Person r
	) t1

-- DuckDB

SELECT
	t1.ID,
	t1.Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			2147483648.123 as Value_1
		FROM
			Person r
	) t1

