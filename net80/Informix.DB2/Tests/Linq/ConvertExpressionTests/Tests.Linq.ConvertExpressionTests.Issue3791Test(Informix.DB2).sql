BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3791Table

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue3791Table
(
	Id      SERIAL         NOT NULL,
	OtherId NVarChar(255)      NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3791GuidTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue3791GuidTable
(
	Id VARCHAR(36) NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.OtherId,
	a_Association.Id
FROM
	Issue3791Table t1
		LEFT JOIN Issue3791GuidTable a_Association ON (t1.OtherId = To_Char(a_Association.Id) OR t1.OtherId IS NULL AND To_Char(a_Association.Id) IS NULL)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3791GuidTable

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3791Table

