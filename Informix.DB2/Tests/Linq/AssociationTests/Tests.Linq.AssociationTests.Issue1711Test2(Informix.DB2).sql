BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Entity1711

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Entity1711
(
	Id BigInt NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Relationship1711

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Relationship1711
(
	EntityId BigInt  NOT NULL,
	Deleted  BOOLEAN NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.Id
FROM
	Entity1711 t
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			Relationship1711 r
		WHERE
			r.Deleted = 'f' AND r.EntityId = t.Id
	)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Relationship1711

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Entity1711

