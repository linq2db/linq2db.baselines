BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DROP TABLE IF EXISTS TempTable

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

CREATE TABLE IF NOT EXISTS TempTable
(
	ID Int NOT NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

INSERT INTO TempTable
(
	ID
)
SELECT
	p.ParentID
FROM
	Parent p

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.ID
FROM
	TempTable t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t.ID
FROM
	Parent p
		INNER JOIN TempTable t ON p.ParentID = t.ID

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DROP TABLE IF EXISTS TempTable

