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
DECLARE @DATUM Timestamp(16) -- DateTime
SET     @DATUM = TO_DATE('2019-01-01', '%Y-%m-%d')

SELECT
	t2.Year_1,
	t2.Month_1,
	t2.Sum_1
FROM
	(
		SELECT
			t1.Year_1,
			t1.Month_1,
			Sum(t1.SKUPAJ) as Sum_1
		FROM
			(
				SELECT
					Year(Nvl(n.DATUM, TO_DATE('0001-01-01', '%Y-%m-%d'))) as Year_1,
					Month(Nvl(n.DATUM, TO_DATE('0001-01-01', '%Y-%m-%d'))) as Month_1,
					n.SKUPAJ
				FROM
					Issue3761Table n
				WHERE
					n.DATUM < @DATUM
			) t1
		GROUP BY
			t1.Year_1,
			t1.Month_1
	) t2
UNION ALL
SELECT
	t4.Year_1,
	t4.Month_1,
	t4.Sum_1
FROM
	(
		SELECT
			t3.Year_1,
			t3.Month_1,
			Sum(t3.SKUPAJ) as Sum_1
		FROM
			(
				SELECT
					Year(Nvl(n_1.DATUM, TO_DATE('0001-01-01', '%Y-%m-%d'))) as Year_1,
					Month(Nvl(n_1.DATUM, TO_DATE('0001-01-01', '%Y-%m-%d'))) as Month_1,
					n_1.SKUPAJ
				FROM
					Issue3761Table n_1
				WHERE
					n_1.DATUM >= @DATUM
			) t3
		GROUP BY
			t3.Year_1,
			t3.Month_1
	) t4

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3761Table

