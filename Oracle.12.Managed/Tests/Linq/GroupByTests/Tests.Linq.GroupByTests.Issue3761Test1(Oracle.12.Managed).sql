﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

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

