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
('N1',3,'Engineer'),
('N2',4,'Engineer')

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	it_1.c1,
	it_1.c2,
	sumOrNull(it_1.Value_1)
FROM
	(
		SELECT
			'Title' as c1,
			CASE
				WHEN it.Name IS NULL THEN NULL
				ELSE it.Title
			END as c2,
			it.YearsExperience as Value_1
		FROM
			odata_person it
	) it_1
GROUP BY
	it_1.c1,
	it_1.c2

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS odata_person

