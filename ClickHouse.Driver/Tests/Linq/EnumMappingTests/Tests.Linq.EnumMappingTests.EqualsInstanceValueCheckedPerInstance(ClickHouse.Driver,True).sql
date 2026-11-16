-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	ConvertedGenderRow r
WHERE
	r.Gender = 'Female'

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.Gender
FROM
	ConvertedGenderRow t1

