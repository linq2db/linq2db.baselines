BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "User"

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS "User"
(
	Id Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "Resource"

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS "Resource"
(
	Id                 Int NOT NULL,
	AssociatedObjectId Int NOT NULL,
	AssociationTypeId  Int     NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Lookup

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Lookup
(
	Id     Int           NOT NULL,
	"Type" NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.AssociatedObjectId,
	t1.AssociationTypeId,
	a_User.Id
FROM
	"Resource" t1
		LEFT JOIN Lookup a_AssociationTypeCode ON t1.AssociationTypeId = a_AssociationTypeCode.Id
		LEFT JOIN "User" a_User ON a_AssociationTypeCode."Type" = 'us' AND a_User.Id = t1.AssociatedObjectId

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Lookup

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "Resource"

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "User"

