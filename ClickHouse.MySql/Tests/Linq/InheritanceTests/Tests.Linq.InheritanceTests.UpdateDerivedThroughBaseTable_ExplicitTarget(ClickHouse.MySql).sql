-- ClickHouse.MySql ClickHouse
ALTER TABLE
	InheritanceFilter
UPDATE
	Code = Code,
	Child2Field = 88
WHERE
	Id = 2

-- ClickHouse.MySql ClickHouse
SELECT
	c_1.Id,
	c_1.Code,
	c_1.Child2Field
FROM
	InheritanceFilter c_1
WHERE
	c_1.Code IN (22, 21, 2) AND c_1.Id = 2
LIMIT 2

