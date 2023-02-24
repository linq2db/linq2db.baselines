BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Condos

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Condos
(
	Id         Int32,
	LocationId Int32,

	 PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS CategoryCondos

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS CategoryCondos
(
	CategoryId Int32,
	CondoId    Int32,

	 PRIMARY KEY (CategoryId, CondoId)
)
ENGINE = MergeTree()
ORDER BY (CategoryId, CondoId)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS CondoTags

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS CondoTags
(
	CondoId Int32,
	TagId   Int32,

	 PRIMARY KEY (CondoId, TagId)
)
ENGINE = MergeTree()
ORDER BY (CondoId, TagId)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Locations

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Locations
(
	Id           Int32,
	LocationName String,

	 PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Locations

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS CondoTags

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS CategoryCondos

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Condos

