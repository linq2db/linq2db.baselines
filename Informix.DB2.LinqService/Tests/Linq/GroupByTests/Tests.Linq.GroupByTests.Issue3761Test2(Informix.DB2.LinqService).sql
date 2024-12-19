BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3761Table

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue3761Table
(
	LETO     Int                       NOT NULL,
	STEVILKA Int                       NOT NULL,
	DATUM    datetime year to fraction     NULL,
	SKUPAJ   Decimal                       NULL,

	PRIMARY KEY (LETO, STEVILKA)
)

BeforeExecute
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
			n_1.DATUM >= TO_DATE('2019-01-01', '%Y-%m-%d')
	) t2
GROUP BY
	t2.Year_1,
	t2.Month_1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3761Table

