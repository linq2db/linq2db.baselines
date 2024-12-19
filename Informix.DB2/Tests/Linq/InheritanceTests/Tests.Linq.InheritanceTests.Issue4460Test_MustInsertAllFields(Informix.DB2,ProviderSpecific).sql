BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4460Table

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue4460Table
(
	Id      Int           NOT NULL,
	Code    NVarChar(255)     NULL,
	Name    NVarChar(255)     NULL,
	Surname NVarChar(255)     NULL
)

BeforeExecute
INSERT BULK Issue4460Table

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Code,
	t1.Id,
	t1.Name,
	t1.Surname
FROM
	Issue4460Table t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4460Table

