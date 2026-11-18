-- ClickHouse.Octonica ClickHouse
ALTER TABLE
	InheritanceFilter
UPDATE
	Code = Code,
	Child1Field = 99
WHERE
	Id = 1

-- ClickHouse.Octonica ClickHouse
SELECT
	c_1.Id,
	c_1.Code,
	c_1.Child1Field
FROM
	InheritanceFilter c_1
WHERE
	c_1.Code IN (12, 11, 1) AND c_1.Id = 1
LIMIT 2

