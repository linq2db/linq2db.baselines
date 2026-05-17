-- DuckDB

SELECT
	'1000'::FLOAT - Coalesce((
		SELECT
			SUM(i.FloatValue)
		FROM
			"Inner" i
		WHERE
			i."Group" = o."Group"
	), '0'::FLOAT)
FROM
	"Outer" o
WHERE
	o.Id = 2
LIMIT 1

