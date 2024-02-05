BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Adsl

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Adsl
(
	Id       Int NOT NULL,
	IdClient Int     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Client

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Client
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

