﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Year_1",
	t1."Month_1",
	SUM(t1.SKUPAJ)
FROM
	(
		SELECT
			EXTRACT(YEAR FROM CASE
				WHEN n.DATUM IS NOT NULL THEN n.DATUM
				ELSE TIMESTAMP '0001-01-01 00:00:00.000000'
			END) as "Year_1",
			EXTRACT(MONTH FROM CASE
				WHEN n.DATUM IS NOT NULL THEN n.DATUM
				ELSE TIMESTAMP '0001-01-01 00:00:00.000000'
			END) as "Month_1",
			n.SKUPAJ
		FROM
			"Issue3761Table" n
		WHERE
			n.DATUM < TIMESTAMP '2019-01-01 00:00:00.000000'
	) t1
GROUP BY
	t1."Year_1",
	t1."Month_1"
UNION ALL
SELECT
	t2."Year_1",
	t2."Month_1",
	SUM(t2.SKUPAJ)
FROM
	(
		SELECT
			EXTRACT(YEAR FROM CASE
				WHEN n_1.DATUM IS NOT NULL THEN n_1.DATUM
				ELSE TIMESTAMP '0001-01-01 00:00:00.000000'
			END) as "Year_1",
			EXTRACT(MONTH FROM CASE
				WHEN n_1.DATUM IS NOT NULL THEN n_1.DATUM
				ELSE TIMESTAMP '0001-01-01 00:00:00.000000'
			END) as "Month_1",
			n_1.SKUPAJ
		FROM
			"Issue3761Table" n_1
		WHERE
			n_1.DATUM >= TIMESTAMP '2019-01-01 00:00:00.000000'
	) t2
GROUP BY
	t2."Year_1",
	t2."Month_1"

