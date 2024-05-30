BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS stLinks

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS stLinks
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

DROP TABLE IF EXISTS stVersions

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS stVersions
(
	inId     SERIAL  NOT NULL,
	inIdMain Int     NOT NULL,

	PRIMARY KEY (inId)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @parentId Integer(4) -- Int32
SET     @parentId = 111

SELECT
	version_1.inIdMain
FROM
	(
		SELECT
			u.inIdChild as VersionId
		FROM
			stLinks u
		WHERE
			u.inIdParent = @parentId
		UNION ALL
		SELECT
			link_1.inIdParent as VersionId
		FROM
			stLinks link_1
		WHERE
			link_1.inIdChild = @parentId
	) u_1
		INNER JOIN stVersions version_1 ON u_1.VersionId = version_1.inId

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS stVersions

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS stLinks

