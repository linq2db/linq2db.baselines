﻿BeforeExecute
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
			n.DATUM < TO_DATE('2019-01-01', '%Y-%m-%d')
	) t1
GROUP BY
	t1.Year_1,
	t1.Month_1

