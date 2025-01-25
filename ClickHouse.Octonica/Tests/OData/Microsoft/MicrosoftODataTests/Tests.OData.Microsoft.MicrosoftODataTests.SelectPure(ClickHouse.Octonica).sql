BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS odata_person

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	it_1.Name,
	it_1.Value_1,
	sumOrNull(it_1.Value_2)
FROM
	(
		SELECT
			'Title' as Name,
			CASE
				WHEN it.Name IS NULL THEN NULL
				ELSE it.Title
			END as Value_1,
			it.YearsExperience as Value_2
		FROM
			odata_person it
	) it_1
GROUP BY
	it_1.Name,
	it_1.Value_1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS odata_person

