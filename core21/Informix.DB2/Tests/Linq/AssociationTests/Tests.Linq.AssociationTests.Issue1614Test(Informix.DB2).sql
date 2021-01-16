BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE "User"
(
	Id Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE "Resource"
(
	Id                 Int NOT NULL,
	AssociatedObjectId Int NOT NULL,
	AssociationTypeId  Int     NULL
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Lookup
(
	Id     Int           NOT NULL,
	"Type" NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE Lookup

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE "Resource"

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE "User"

