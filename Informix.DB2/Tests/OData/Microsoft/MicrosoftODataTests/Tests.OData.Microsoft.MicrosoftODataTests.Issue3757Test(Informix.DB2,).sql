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
	Issue3757Level1 m_1
		INNER JOIN Issue3757Level2 d ON m_1.ID = d.ParentId

BeforeExecute
DisposeTransaction
BeforeExecute
-- Informix.DB2 Informix

SELECT
	l1.ID,
	l1.ValB,
	l1.ValS,
	l1.ValInt
FROM
	Issue3757Level1 l1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3757Level2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3757Level1

