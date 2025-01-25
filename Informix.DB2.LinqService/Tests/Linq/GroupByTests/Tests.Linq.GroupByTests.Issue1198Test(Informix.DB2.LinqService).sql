BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue1192Table

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue1192Table
(
	IdId      Int NOT NULL,
	MyOtherId Int NOT NULL,
	Status    Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	COUNT(CASE
		WHEN t.Status = 3 THEN 1
		ELSE NULL
	END)
FROM
	Issue1192Table t
WHERE
	t.MyOtherId = 12

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue1192Table

