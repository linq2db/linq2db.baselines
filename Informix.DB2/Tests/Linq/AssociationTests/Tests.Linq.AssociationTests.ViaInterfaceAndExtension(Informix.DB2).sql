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
	x.Id,
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
WHERE
	EXISTS(
		SELECT
			*
		FROM
			SubEntity t2
		WHERE
			x.Id = t2.MainEntityId
	)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS SubEntity

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS MainEntity

