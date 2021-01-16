BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Entity1711
(
	Id BigInt NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Relationship1711
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
	EXISTS(
		SELECT
			*
		FROM
			Relationship1711 t1
		WHERE
			t.Id = t1.EntityId
	)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE Relationship1711

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE Entity1711

