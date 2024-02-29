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
	'***XXX***'
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
	2,
	'***HHH***'
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
	3,
	'***VVV***'
)

BeforeExecute
-- Informix.DB2 Informix

UPDATE
	TrimTestTable
SET
	TrimTestTable."Data" = '***III***'
WHERE
	TrimTestTable.ID = 3

BeforeExecute
-- Informix.DB2 Informix

UPDATE
	TrimTestTable
SET
	TrimTestTable."Data" = '***OOO***'
WHERE
	TrimTestTable."Data" = '***XXX***'

BeforeExecute
-- Informix.DB2 Informix

UPDATE
	TrimTestTable
SET
	TrimTestTable."Data" = '***SSS***'
WHERE
	TrimTestTable."Data" = '***HHH***'

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

