BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS odata_person

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS odata_person
(
	Name            String,
	YearsExperience Int32,
	Title           String,

	PRIMARY KEY (Name)
)
ENGINE = MergeTree()
ORDER BY Name

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO odata_person
(
	Name,
	YearsExperience,
	Title
)
VALUES
('N1',3,'Engineer'),
('N2',4,'Engineer')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	it.Title,
	sum(it.YearsExperience)
FROM
	odata_person it
GROUP BY
	it.Title

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS odata_person

