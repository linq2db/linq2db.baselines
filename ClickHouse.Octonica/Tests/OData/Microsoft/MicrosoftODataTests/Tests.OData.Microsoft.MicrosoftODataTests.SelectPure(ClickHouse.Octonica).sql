-- ClickHouse.Octonica ClickHouse

SELECT
	'Title',
	it.Title,
	SUM(it.YearsExperience)
FROM
	odata_person it
GROUP BY
	it.Title

