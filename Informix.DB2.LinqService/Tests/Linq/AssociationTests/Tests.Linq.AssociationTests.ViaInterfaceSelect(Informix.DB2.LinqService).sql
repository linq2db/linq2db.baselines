BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS MainEntity

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS MainEntity
(
	Id Int NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS SubEntity

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS SubEntity
(
	Id           Int NOT NULL,
	MainEntityId Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	m_1.Id,
	d.Id,
	d.MainEntityId
FROM
	MainEntity m_1
		INNER JOIN SubEntity d ON m_1.Id = d.MainEntityId

BeforeExecute
-- Informix.DB2 Informix

SELECT
	x.Id
FROM
	MainEntity x

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS SubEntity

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS MainEntity

