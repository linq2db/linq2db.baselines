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
	subcc.CountCondoCategories,
	subct.CountCondoTags,
	l.LocationName,
	l.Id
FROM
	Condos c_1
		INNER JOIN Locations l ON c_1.LocationId = l.Id
		LEFT JOIN (
			SELECT
				g2.CondoId as Key_1,
				COUNT(*) as CountCondoTags
			FROM
				CondoTags g2
			GROUP BY
				g2.CondoId
		) subct ON c_1.Id = subct.Key_1
		LEFT JOIN (
			SELECT
				g1.CondoId as Key_1,
				COUNT(*) as CountCondoCategories
			FROM
				CategoryCondos g1
			GROUP BY
				g1.CondoId
		) subcc ON c_1.Id = subcc.Key_1

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

