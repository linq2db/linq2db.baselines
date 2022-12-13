BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS odata_person

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

SELECT
	t1.Name,
	t1.Key_1,
	sumOrNull(t1.YearsExperience)
FROM
	(
		SELECT
			selectParam.Title as Key_1,
			'Title' as Name,
			selectParam.YearsExperience as YearsExperience
		FROM
			odata_person selectParam
	) t1
GROUP BY
	t1.Key_1,
	t1.Name

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS odata_person

