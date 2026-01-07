-- ClickHouse.Octonica ClickHouse

SELECT
	p.FirstName
FROM
	Person p
WHERE
	concat(p.FirstName, ' ', 1) = 'John 1'

