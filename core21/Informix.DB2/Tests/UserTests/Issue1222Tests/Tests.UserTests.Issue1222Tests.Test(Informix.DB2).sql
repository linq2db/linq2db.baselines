BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE stLinks
(
	inId          SERIAL                     NOT NULL,
	inIdParent    Int                        NOT NULL,
	inIdChild     Int                        NOT NULL,
	inIdTypeRel   Int                        NOT NULL,
	inMaxQuantity Float                          NULL,
	inMinQuantity Float                          NULL,
	inIdMeasure   Int                            NULL,
	inIdUnit      Int                            NULL,
	"State"       Int                            NULL,
	dtModified    datetime year to fraction  NOT NULL,
	inIdOrgOwner  Int                            NULL,
	dtSynchDate   datetime year to fraction      NULL,
	stGUID        NVarChar(255)              NOT NULL,

	PRIMARY KEY (inId)
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE stVersions
(
	inId     SERIAL  NOT NULL,
	inIdMain Int     NOT NULL,

	PRIMARY KEY (inId)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE stVersions

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE stLinks

