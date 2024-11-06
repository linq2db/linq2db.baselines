BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS DynamicColumnsTestTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS DynamicColumnsTestTable
(
	Id Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	DynamicColumnsTestTable x

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS DynamicColumnsTestTable

