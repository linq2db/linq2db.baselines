-- ClickHouse.Driver ClickHouse

SELECT
	'Title',
	it.Title,
	sumOrNull(it.YearsExperience)
FROM
	odata_person it
GROUP BY
	it.Title

