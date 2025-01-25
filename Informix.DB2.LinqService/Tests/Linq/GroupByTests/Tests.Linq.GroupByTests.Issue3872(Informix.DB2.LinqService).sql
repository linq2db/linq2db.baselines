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
	MAX(r.PersonID)
FROM
	Person r
UNION ALL
SELECT
	r_1.PersonID
FROM
	Person r_1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3761Table

