-- Informix.DB2 Informix

SELECT
	t1.Year_1,
	t1.Month_1,
	SUM(t1.SKUPAJ)
FROM
	(
		SELECT
			Year(CASE
				WHEN n.DATUM IS NOT NULL THEN n.DATUM
				ELSE TO_DATE('0001-01-01', '%Y-%m-%d')
			END) as Year_1,
			Month(CASE
				WHEN n.DATUM IS NOT NULL THEN n.DATUM
				ELSE TO_DATE('0001-01-01', '%Y-%m-%d')
			END) as Month_1,
			n.SKUPAJ
		FROM
			Issue3761Table n
		WHERE
			n.DATUM < Mdy(1, 1, 2019)
	) t1
GROUP BY
	t1.Year_1,
	t1.Month_1
UNION ALL
SELECT
	t2.Year_1,
	t2.Month_1,
	SUM(t2.SKUPAJ)
FROM
	(
		SELECT
			Year(CASE
				WHEN n_1.DATUM IS NOT NULL THEN n_1.DATUM
				ELSE TO_DATE('0001-01-01', '%Y-%m-%d')
			END) as Year_1,
			Month(CASE
				WHEN n_1.DATUM IS NOT NULL THEN n_1.DATUM
				ELSE TO_DATE('0001-01-01', '%Y-%m-%d')
			END) as Month_1,
			n_1.SKUPAJ
		FROM
			Issue3761Table n_1
		WHERE
			n_1.DATUM >= Mdy(1, 1, 2019)
	) t2
GROUP BY
	t2.Year_1,
	t2.Month_1

