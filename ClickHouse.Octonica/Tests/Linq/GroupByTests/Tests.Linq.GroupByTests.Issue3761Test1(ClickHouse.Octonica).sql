-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Year_1,
	t1.Month_1,
	sumOrNull(t1.SKUPAJ)
FROM
	(
		SELECT
			toYear(CASE
				WHEN n.DATUM IS NOT NULL THEN n.DATUM
				ELSE toDateTime64('0001-01-01 00:00:00.0000000', 7)
			END) as Year_1,
			toMonth(CASE
				WHEN n.DATUM IS NOT NULL THEN n.DATUM
				ELSE toDateTime64('0001-01-01 00:00:00.0000000', 7)
			END) as Month_1,
			n.SKUPAJ as SKUPAJ
		FROM
			Issue3761Table n
		WHERE
			n.DATUM < makeDateTime(2019, 1, 1, 0, 0, 0)
	) t1
GROUP BY
	t1.Year_1,
	t1.Month_1

