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
	subcc.CountCondoCategories,
	subct.CountCondoTags,
	l.LocationName,
	l.Id
FROM
	Condos c_1
		INNER JOIN Locations l ON c_1.LocationId = l.Id
		LEFT JOIN (
			SELECT
				g2.CondoId as CondoId,
				COUNT(*) as CountCondoTags
			FROM
				CondoTags g2
			GROUP BY
				g2.CondoId
		) subct ON c_1.Id = subct.CondoId
		LEFT JOIN (
			SELECT
				g1.CondoId as CondoId,
				COUNT(*) as CountCondoCategories
			FROM
				CategoryCondos g1
			GROUP BY
				g1.CondoId
		) subcc ON c_1.Id = subcc.CondoId

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

