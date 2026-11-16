-- ClickHouse.Octonica ClickHouse
SELECT
	r.Id
FROM
	ConvertedGenderRow r
WHERE
	r.Gender = 'Female'

-- ClickHouse.Octonica ClickHouse
SELECT
	t1.Id,
	t1.Gender
FROM
	ConvertedGenderRow t1

