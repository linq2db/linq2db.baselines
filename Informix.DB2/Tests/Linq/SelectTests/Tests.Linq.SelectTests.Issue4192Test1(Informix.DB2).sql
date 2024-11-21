BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4192TableNotNullable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue4192TableNotNullable
(
	Name     NVarChar(255)     NULL,
	ParentId Int           NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4192TableNotNullable

