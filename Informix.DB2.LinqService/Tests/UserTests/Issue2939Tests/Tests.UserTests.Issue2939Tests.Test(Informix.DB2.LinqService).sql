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
	serv.Id
FROM
	Adsl serv
		INNER JOIN Client client_1 ON serv.IdClient = client_1.Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Client

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Adsl

