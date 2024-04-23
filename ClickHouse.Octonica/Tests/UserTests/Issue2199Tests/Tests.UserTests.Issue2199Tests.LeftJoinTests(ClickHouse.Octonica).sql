BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Manufacturer

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Manufacturer
(
	ManufacturerId Int32,
	Name           Nullable(String),
	CountryCode    Nullable(String),

	PRIMARY KEY (ManufacturerId)
)
ENGINE = MergeTree()
ORDER BY ManufacturerId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Country

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Country
(
	Code String,
	Name Nullable(String),

	PRIMARY KEY (Code)
)
ENGINE = MergeTree()
ORDER BY Code

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ManufacturerId,
	t1.CountryCode,
	t1.Name,
	co.Code,
	co.Name,
	m_2.ManufacturerId,
	m_2.CountryCode,
	m_2.Name,
	m_2.Code,
	m_2.Name_1
FROM
	Manufacturer t1
		LEFT JOIN Country co ON t1.CountryCode = co.Code
		LEFT JOIN (
			SELECT
				m_1.ManufacturerId as ManufacturerId,
				m_1.CountryCode as CountryCode,
				m_1.Name as Name,
				co_1.Code as Code,
				co_1.Name as Name_1
			FROM
				Manufacturer m_1
					LEFT JOIN Country co_1 ON m_1.CountryCode = co_1.Code
			WHERE
				m_1.ManufacturerId = 2
		) m_2 ON 1=1
WHERE
	t1.ManufacturerId = 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Country

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Manufacturer

