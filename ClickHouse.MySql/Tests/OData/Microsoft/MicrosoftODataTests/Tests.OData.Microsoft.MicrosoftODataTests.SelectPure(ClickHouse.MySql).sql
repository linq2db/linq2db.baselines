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
('N1',toInt32(3),'Engineer'),
('N2',toInt32(4),'Engineer')

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	'Title',
	selectParam.Title,
	sumOrNull(selectParam.YearsExperience)
FROM
	odata_person selectParam
GROUP BY
	selectParam.Title

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS odata_person

