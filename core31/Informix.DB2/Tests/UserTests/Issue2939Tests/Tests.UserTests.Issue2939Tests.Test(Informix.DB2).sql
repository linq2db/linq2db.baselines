BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Adsl
(
	Id       Int NOT NULL,
	IdClient Int     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Client
(
	Id Int NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	adsl_1.Id
FROM
	Adsl adsl_1
		INNER JOIN Client client_1 ON adsl_1.IdClient = client_1.Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Client

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Adsl

