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

DROP TABLE Relationship1711

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE Entity1711

