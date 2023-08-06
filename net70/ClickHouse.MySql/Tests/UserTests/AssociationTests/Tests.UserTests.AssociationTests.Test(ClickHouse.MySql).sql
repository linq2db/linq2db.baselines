BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS DisTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS DisTable
(
	DisTypeID Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS JurTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS JurTable
(
	JurCode String,

	PRIMARY KEY (JurCode)
)
ENGINE = MergeTree()
ORDER BY JurCode

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS DisTypeTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS DisTypeTable
(
	DisTypeID Int32,
	JurCode   String,

	PRIMARY KEY (DisTypeID)
)
ENGINE = MergeTree()
ORDER BY DisTypeID

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	d.DisTypeID
FROM
	DisTable d
		INNER JOIN DisTypeTable a_DisType ON CASE
			WHEN d.DisTypeID = toInt32(1)
				THEN toInt32(1)
			WHEN d.DisTypeID = toInt32(2)
				THEN toInt32(2)
			WHEN d.DisTypeID = toInt32(4)
				THEN toInt32(4)
			WHEN d.DisTypeID = toInt32(5)
				THEN toInt32(5)
		END = a_DisType.DisTypeID
		INNER JOIN JurTable j ON a_DisType.JurCode = j.JurCode

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS DisTypeTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS JurTable

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS DisTable

