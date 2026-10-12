-- ClickHouse.Octonica ClickHouse
SELECT
	x.Category,
	sumOrNull(CASE
		WHEN x.Year = 2000 THEN x.Amount
		ELSE NULL
	END),
	sumOrNull(CASE
		WHEN x.Year = 2010 THEN x.Amount
		ELSE NULL
	END)
FROM
	Sales x
GROUP BY
	x.Category

