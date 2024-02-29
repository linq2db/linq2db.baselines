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
	Max(selectParam.PersonID)
FROM
	Person selectParam
UNION ALL
SELECT
	r.PersonID
FROM
	Person r

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3761Table

