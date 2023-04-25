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
	e_1.ManufacturerId,
	e_1.CountryCode,
	e_1.Name,
	co.Code,
	co.Name,
	t1.ManufacturerId,
	t1.CountryCode,
	t1.Name,
	t1.Code,
	t1.Name_1
FROM
	Manufacturer e_1
		LEFT JOIN Country co ON co.Code = e_1.CountryCode
		LEFT JOIN (
			SELECT
				e.ManufacturerId as ManufacturerId,
				e.CountryCode as CountryCode,
				e.Name as Name,
				co_1.Code as Code,
				co_1.Name as Name_1
			FROM
				Manufacturer e
					LEFT JOIN Country co_1 ON co_1.Code = e.CountryCode
			WHERE
				e.ManufacturerId = toInt32(2)
		) t1 ON 1=1
WHERE
	e_1.ManufacturerId = toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Country

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Manufacturer

