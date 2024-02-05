BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TrimTestTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS TrimTestTable
(
	ID     Int          NOT NULL,
	"Data" NVarChar(50)     NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO TrimTestTable
(
	ID,
	"Data"
)
VALUES
(
	1,
	'***OOO***'
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	r.ID,
	r."Data"
FROM
	TrimTestTable r
ORDER BY
	r.ID

BeforeExecute
-- Informix.DB2 Informix

SELECT
	r.ID,
	r."Data"
FROM
	TrimTestTable r
ORDER BY
	r.ID

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TrimTestTable

