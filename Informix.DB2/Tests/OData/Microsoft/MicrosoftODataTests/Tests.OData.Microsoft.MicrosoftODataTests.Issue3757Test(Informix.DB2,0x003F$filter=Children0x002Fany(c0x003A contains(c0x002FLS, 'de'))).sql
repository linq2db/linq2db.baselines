BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3757Level1

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue3757Level1
(
	ID     Int           NOT NULL,
	ValS   NVarChar(255)     NULL,
	ValB   BOOLEAN           NULL,
	ValInt Int               NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3757Level2

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue3757Level2
(
	ID       Int           NOT NULL,
	ParentId Int           NOT NULL,
	ValS     NVarChar(255)     NULL,
	ValB     BOOLEAN           NULL,
	ValInt   Int               NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Informix.DB2 Informix

SELECT
	m_1.ID,
	m_1.ValS,
	d.ID,
	d.ValB,
	d.ValInt
FROM
	(
		SELECT DISTINCT
			l1.ID,
			l1.ValS
		FROM
			Issue3757Level1 l1
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					Issue3757Level2 c_1
				WHERE
					l1.ID = c_1.ParentId AND l1.ValS LIKE '%de%' ESCAPE '~' AND
					l1.ValS IS NOT NULL
			)
	) m_1
		INNER JOIN Issue3757Level2 d ON m_1.ID = d.ParentId

BeforeExecute
DisposeTransaction
BeforeExecute
-- Informix.DB2 Informix

SELECT
	it.ID,
	it.ValB,
	it.ValS,
	it.ValInt
FROM
	Issue3757Level1 it
WHERE
	EXISTS(
		SELECT
			*
		FROM
			Issue3757Level2 c_1
		WHERE
			it.ID = c_1.ParentId AND it.ValS LIKE '%de%' ESCAPE '~' AND
			it.ValS IS NOT NULL
	)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3757Level2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3757Level1

