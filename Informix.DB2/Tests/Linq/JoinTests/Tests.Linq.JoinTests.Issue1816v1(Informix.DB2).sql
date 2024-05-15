BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS stVersions

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS stVersions
(
	inId     Int NOT NULL,
	inIdMain Int NOT NULL,

	PRIMARY KEY (inId)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS rlStatesTypesAndUserGroups

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS rlStatesTypesAndUserGroups
(
	inIdState Int NOT NULL,
	inIdType  Int NOT NULL,

	PRIMARY KEY (inIdState, inIdType)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS stMain

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS stMain
(
	inId     Int NOT NULL,
	inIdType Int NOT NULL,

	PRIMARY KEY (inId)
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	v.inId,
	t.inIdState
FROM
	stVersions v
		INNER JOIN stMain a_Main ON v.inIdMain = a_Main.inId
		LEFT JOIN rlStatesTypesAndUserGroups t ON t.inIdType = a_Main.inIdType

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS stMain

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS rlStatesTypesAndUserGroups

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS stVersions

