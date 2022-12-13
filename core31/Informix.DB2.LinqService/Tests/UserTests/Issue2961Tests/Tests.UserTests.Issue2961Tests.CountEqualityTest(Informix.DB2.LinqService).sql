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
	t4.CountCondoCategories,
	t2.CountCondoTags,
	l.LocationName,
	l.Id
FROM
	Condos c_1
		INNER JOIN Locations l ON c_1.LocationId = l.Id
		LEFT JOIN (
			SELECT
				ctleft.CondoId as subct,
				ctleft.CountCondoTags
			FROM
				(
					SELECT
						t1.CondoId,
						Count(*) as CountCondoTags
					FROM
						CondoTags t1
					GROUP BY
						t1.CondoId
				) ctleft
		) t2 ON c_1.Id = t2.subct
		LEFT JOIN (
			SELECT
				ccleft.CondoId as subcc,
				ccleft.CountCondoCategories
			FROM
				(
					SELECT
						t3.CondoId,
						Count(*) as CountCondoCategories
					FROM
						CategoryCondos t3
					GROUP BY
						t3.CondoId
				) ccleft
		) t4 ON c_1.Id = t4.subcc

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

