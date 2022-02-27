BeforeExecute
-- Informix.DB2 Informix

DROP TABLE TempTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE TempTable
(
	ID Int NOT NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO TempTable
(
	ID
)
SELECT
	p.ParentID
FROM
	Parent p

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t.ID
FROM
	Parent p
		INNER JOIN TempTable t ON p.ParentID = t.ID

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE TempTable

