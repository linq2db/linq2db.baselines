﻿BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TransactionEntity

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS TransactionEntity
(
	Id      VARCHAR(36)               NOT NULL,
	ValidOn datetime year to fraction NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS LineEntity

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS LineEntity
(
	Id            VARCHAR(36)   NOT NULL,
	TransactionId VARCHAR(36)   NOT NULL,
	Amount        Decimal       NOT NULL,
	Currency      NVarChar(255)     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	m_1.Id,
	d.Id,
	d.Amount,
	d.Currency
FROM
	(
		SELECT DISTINCT
			x.Id
		FROM
			TransactionEntity x
		WHERE
			EXISTS(
				SELECT
					a_Lines.Currency
				FROM
					LineEntity a_Lines
				WHERE
					x.Id = a_Lines.TransactionId
				INTERSECT
				SELECT
					t1."item"
				FROM
					(
						SELECT 'A'::NVarChar(255) AS "item" FROM table(set{1})
						UNION ALL
						SELECT 'B'::NVarChar(255) FROM table(set{1})) t1
			)
	) m_1
		INNER JOIN LineEntity d ON m_1.Id = d.TransactionId

BeforeExecute
-- Informix.DB2 Informix

SELECT
	x.Id,
	x.ValidOn
FROM
	TransactionEntity x
WHERE
	EXISTS(
		SELECT
			a_Lines.Currency
		FROM
			LineEntity a_Lines
		WHERE
			x.Id = a_Lines.TransactionId
		INTERSECT
		SELECT
			t1."item"
		FROM
			(
				SELECT 'A'::NVarChar(255) AS "item" FROM table(set{1})
				UNION ALL
				SELECT 'B'::NVarChar(255) FROM table(set{1})) t1
	)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS LineEntity

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TransactionEntity

