BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Manufacturer

BeforeExecute
-- ClickHouse.MySql ClickHouse

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
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Country

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Country
(
	Code String,
	Name Nullable(String),

	 PRIMARY KEY (Code)
)
ENGINE = MergeTree()
ORDER BY Code

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	e_1.ManufacturerId,
	e_1.CountryCode,
	e_1.Name,
	ce.Code,
	ce.Name,
	t1.ManufacturerId,
	t1.CountryCode,
	t1.Name,
	t1.co,
	t1.Name_1
FROM
	Manufacturer e_1
		LEFT JOIN Country ce ON e_1.CountryCode = ce.Code
		LEFT JOIN (
			SELECT
				e.ManufacturerId as ManufacturerId,
				e.CountryCode as CountryCode,
				e.Name as Name,
				ce_1.Code as co,
				ce_1.Name as Name_1
			FROM
				Manufacturer e
					LEFT JOIN Country ce_1 ON e.CountryCode = ce_1.Code
			WHERE
				e.ManufacturerId = toInt32(2)
		) t1 ON 1=1
WHERE
	e_1.ManufacturerId = toInt32(1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Country

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Manufacturer

