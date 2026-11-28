-- ClickHouse.Octonica ClickHouse
SELECT
	r.Category,
	sumOrNull(CASE
		WHEN r.Year = 2010 THEN r.Amount
		ELSE NULL
	END)
FROM
	Sales r
GROUP BY
	r.Category

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Category,
	sumOrNull(CASE
		WHEN r.Year = 2010 THEN r.Amount
		ELSE NULL
	END)
FROM
	Sales r
GROUP BY
	r.Category

-- ClickHouse.Octonica ClickHouse
SELECT
	r.Category,
	toInt32(sumOrNull(CASE
		WHEN r.Year = 2010 THEN r.Amount
		ELSE NULL
	END))
FROM
	Sales r
GROUP BY
	r.Category

