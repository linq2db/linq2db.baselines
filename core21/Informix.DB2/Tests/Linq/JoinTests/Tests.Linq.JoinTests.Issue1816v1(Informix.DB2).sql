BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE stVersions
(
	inId     Int NOT NULL,
	inIdMain Int NOT NULL,

	PRIMARY KEY (inId)
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE rlStatesTypesAndUserGroups
(
	inIdState Int NOT NULL,
	inIdType  Int NOT NULL,

	PRIMARY KEY (inIdState, inIdType)
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE stMain
(
	inId     Int NOT NULL,
	inIdType Int NOT NULL,

	PRIMARY KEY (inId)
)

BeforeExecute
-- Informix.DB2 Informix

SELECT 
	v.inId, 
	r.inIdState
FROM
	stVersions v
		INNER JOIN stMain a_Main ON v.inIdMain = a_Main.inId
		LEFT JOIN rlStatesTypesAndUserGroups r ON r.inIdType = a_Main.inIdType

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE stMain

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE rlStatesTypesAndUserGroups

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE stVersions

