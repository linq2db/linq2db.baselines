﻿BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DROP TABLE TempTable

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

CREATE TABLE TempTable
(
	ID Int NOT NULL
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
-- Informix.DB2 Informix

SELECT
	t.ID
FROM
	Parent p
		INNER JOIN TempTable t ON p.ParentID = t.ID

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DROP TABLE TempTable

