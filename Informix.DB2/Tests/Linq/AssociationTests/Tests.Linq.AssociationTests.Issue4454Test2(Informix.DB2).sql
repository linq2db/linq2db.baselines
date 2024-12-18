BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4454Client

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue4454Client
(
	Id   Int           NOT NULL,
	Name NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4454Service

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue4454Service
(
	Id       Int NOT NULL,
	IdClient Int     NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	a_Client2.Name
FROM
	Issue4454Service s
		INNER JOIN Issue4454Client a_Client2 ON a_Client2.Id = s.IdClient AND s.IdClient IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4454Service

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4454Client

