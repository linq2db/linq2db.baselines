BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue2434Table

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue2434Table
(
	Id        Int           NOT NULL,
	FirstName NVarChar(255)     NULL,
	LastName  NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.FirstName,
	t1.LastName,
	t1.FirstName || ' ' || t1.LastName
FROM
	Issue2434Table t1
ORDER BY
	t1.FirstName || ' ' || t1.LastName

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue2434Table

