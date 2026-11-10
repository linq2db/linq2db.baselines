-- YDB Ydb
SELECT
	r.Id as Id
FROM
	TicksConversionRow r
WHERE
	r.Plain = r.`Date`

-- YDB Ydb
SELECT
	r.Id as Id
FROM
	TicksConversionRow r
WHERE
	r.Plain < r.`Date`

-- YDB Ydb
SELECT
	CASE
		WHEN r.Id <> 1 THEN r.`Date`
		ELSE r.Plain
	END as c1
FROM
	TicksConversionRow r
ORDER BY
	r.Id

