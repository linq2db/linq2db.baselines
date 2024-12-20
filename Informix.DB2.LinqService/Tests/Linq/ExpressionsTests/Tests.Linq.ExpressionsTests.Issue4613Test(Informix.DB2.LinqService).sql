BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4613Service

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue4613Service
(
	IdContract Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4613Contract

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue4613Contract
(
	Id Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	contract.Id,
	servProj.IdContract
FROM
	Issue4613Service servProj
		INNER JOIN Issue4613Contract contract ON servProj.IdContract = contract.Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4613Contract

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue4613Service

