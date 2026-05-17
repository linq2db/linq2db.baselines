-- DuckDB

SELECT
	t1.ID,
	t1.Value_1
FROM
	(
		SELECT
			r.PersonID as ID,
			'0'::FLOAT as Value_1
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
			'3.14748365E+09'::FLOAT as Value_1
		FROM
			Person r
	) t1

