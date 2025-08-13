BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	'Title',
	it.Title,
	sum(it.YearsExperience)
FROM
	odata_person it
GROUP BY
	it.Title

