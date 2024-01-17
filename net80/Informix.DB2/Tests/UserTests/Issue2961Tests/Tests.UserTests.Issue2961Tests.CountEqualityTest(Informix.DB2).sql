BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Condos

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Condos
(
	Id         Int NOT NULL,
	LocationId Int NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS CategoryCondos

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS CategoryCondos
(
	CategoryId Int NOT NULL,
	CondoId    Int NOT NULL,

	PRIMARY KEY (CategoryId, CondoId)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS CondoTags

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS CondoTags
(
	CondoId Int NOT NULL,
	TagId   Int NOT NULL,

	PRIMARY KEY (CondoId, TagId)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Locations

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Locations
(
	Id           Int           NOT NULL,
	LocationName NVarChar(100) NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	c_1.Id,
	c_1.LocationId,
	t2.CountCondoCategories,
	t1.CountCondoTags,
	l.LocationName,
	l.Id
FROM
	Condos c_1
		INNER JOIN Locations l ON c_1.LocationId = l.Id
		LEFT JOIN (
			SELECT
				ctleft.CondoId as subct,
				Count(*) as CountCondoTags
			FROM
				CondoTags ctleft
			GROUP BY
				ctleft.CondoId
		) t1 ON c_1.Id = t1.subct
		LEFT JOIN (
			SELECT
				ccleft.CondoId as subcc,
				Count(*) as CountCondoCategories
			FROM
				CategoryCondos ccleft
			GROUP BY
				ccleft.CondoId
		) t2 ON c_1.Id = t2.subcc

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Locations

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS CondoTags

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS CategoryCondos

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Condos

