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
	(
		SELECT
			Count(*)
		FROM
			SubEntity t1
		WHERE
			x.Id = t1.MainEntityId
	)
FROM
	MainEntity x

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS SubEntity

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS MainEntity

