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
	t2.Id,
	t2.OtherId,
	t1.Id
FROM
	Issue3791Table t2
		LEFT JOIN (
			SELECT
				a_Association.Id,
				a_Association.Id::NVarChar(36) as c1
			FROM
				Issue3791GuidTable a_Association
		) t1 ON (t2.OtherId = t1.c1 OR t2.OtherId IS NULL AND t1.c1 IS NULL)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3791GuidTable

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue3791Table

