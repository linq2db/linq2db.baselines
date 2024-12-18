BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS DisTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS DisTable
(
	DisTypeID Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS JurTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS JurTable
(
	JurCode NVarChar(2) NOT NULL,

	PRIMARY KEY (JurCode)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS DisTypeTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS DisTypeTable
(
	DisTypeID Int          NOT NULL,
	JurCode   NVarChar(50) NOT NULL,

	PRIMARY KEY (DisTypeID)
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	d.DisTypeID
FROM
	DisTable d
		INNER JOIN DisTypeTable a_DisType ON CASE
			WHEN d.DisTypeID = 1 THEN 1
			WHEN d.DisTypeID = 2 THEN 2
			WHEN d.DisTypeID = 4 THEN 4
			WHEN d.DisTypeID = 5 THEN 5
		END = a_DisType.DisTypeID AND CASE
			WHEN d.DisTypeID = 1 THEN 1
			WHEN d.DisTypeID = 2 THEN 2
			WHEN d.DisTypeID = 4 THEN 4
			WHEN d.DisTypeID = 5 THEN 5
		END IS NOT NULL
		INNER JOIN JurTable j ON a_DisType.JurCode = j.JurCode

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS DisTypeTable

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS JurTable

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS DisTable

