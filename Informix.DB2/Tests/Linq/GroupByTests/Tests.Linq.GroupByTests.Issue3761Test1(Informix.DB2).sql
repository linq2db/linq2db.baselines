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
	t1.Key_1,
	t1.Key_2,
	Sum(t1.SKUPAJ)
FROM
	(
		SELECT
			Year(Nvl(n.DATUM, TO_DATE('0001-01-01', '%Y-%m-%d'))) as Key_1,
			Month(Nvl(n.DATUM, TO_DATE('0001-01-01', '%Y-%m-%d'))) as Key_2,
			n.SKUPAJ
		FROM
			Issue3761Table n
		WHERE
			n.DATUM < @DATUM
	) t1
GROUP BY
	t1.Key_1,
	t1.Key_2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3761Table

