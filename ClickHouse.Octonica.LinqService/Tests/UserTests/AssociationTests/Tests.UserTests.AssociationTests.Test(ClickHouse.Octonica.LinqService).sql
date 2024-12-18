BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DisTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS DisTable
(
	DisTypeID Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS JurTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS JurTable
(
	JurCode String,

	PRIMARY KEY (JurCode)
)
ENGINE = MergeTree()
ORDER BY JurCode

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DisTypeTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS DisTypeTable
(
	DisTypeID Int32,
	JurCode   String,

	PRIMARY KEY (DisTypeID)
)
ENGINE = MergeTree()
ORDER BY DisTypeID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	d.DisTypeID
FROM
	DisTable d
		INNER JOIN DisTypeTable a_DisType ON CASE
			WHEN d.DisTypeID = 1 THEN 1
			WHEN d.DisTypeID = 2 THEN 2
			WHEN d.DisTypeID = 4 THEN 4
			WHEN d.DisTypeID = 5 THEN 5
		END = a_DisType.DisTypeID AND CASE
			WHEN d.DisTypeID = 1 THEN 1
			WHEN d.DisTypeID = 2 THEN 2
			WHEN d.DisTypeID = 4 THEN 4
			WHEN d.DisTypeID = 5 THEN 5
		END IS NOT NULL
		INNER JOIN JurTable j ON a_DisType.JurCode = j.JurCode

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DisTypeTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS JurTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS DisTable

