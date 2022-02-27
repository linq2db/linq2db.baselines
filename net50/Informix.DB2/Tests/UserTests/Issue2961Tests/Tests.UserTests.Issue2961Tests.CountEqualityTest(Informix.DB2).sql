BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Condos
(
	Id         Int NOT NULL,
	LocationId Int NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE CategoryCondos
(
	CategoryId Int NOT NULL,
	CondoId    Int NOT NULL,

	PRIMARY KEY (CategoryId, CondoId)
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE CondoTags
(
	CondoId Int NOT NULL,
	TagId   Int NOT NULL,

	PRIMARY KEY (CondoId, TagId)
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Locations
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
	ccleft.CountCondoCategories,
	ctleft.CountCondoTags,
	l.LocationName,
	l.Id
FROM
	Condos c_1
		INNER JOIN Locations l ON c_1.LocationId = l.Id
		LEFT JOIN (
			SELECT
				t1.CondoId,
				Count(*) as CountCondoTags
			FROM
				CondoTags t1
			GROUP BY
				t1.CondoId
		) ctleft ON c_1.Id = ctleft.CondoId
		LEFT JOIN (
			SELECT
				t2.CondoId,
				Count(*) as CountCondoCategories
			FROM
				CategoryCondos t2
			GROUP BY
				t2.CondoId
		) ccleft ON c_1.Id = ccleft.CondoId

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

