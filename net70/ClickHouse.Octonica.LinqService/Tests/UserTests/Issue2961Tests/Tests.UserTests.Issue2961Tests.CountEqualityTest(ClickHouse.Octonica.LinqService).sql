BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Condos

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Condos
(
	Id         Int32,
	LocationId Int32,

	 PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS CategoryCondos

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS CategoryCondos
(
	CategoryId Int32,
	CondoId    Int32,

	 PRIMARY KEY (CategoryId, CondoId)
)
ENGINE = MergeTree()
ORDER BY (CategoryId, CondoId)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS CondoTags

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS CondoTags
(
	CondoId Int32,
	TagId   Int32,

	 PRIMARY KEY (CondoId, TagId)
)
ENGINE = MergeTree()
ORDER BY (CondoId, TagId)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Locations

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Locations
(
	Id           Int32,
	LocationName String,

	 PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
				ctleft.CountCondoTags as CountCondoTags
			FROM
				(
					SELECT
						t1.CondoId as CondoId,
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
				ccleft.CountCondoCategories as CountCondoCategories
			FROM
				(
					SELECT
						t3.CondoId as CondoId,
						Count(*) as CountCondoCategories
					FROM
						CategoryCondos t3
					GROUP BY
						t3.CondoId
				) ccleft
		) t4 ON c_1.Id = t4.subcc

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Locations

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS CondoTags

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS CategoryCondos

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Condos

