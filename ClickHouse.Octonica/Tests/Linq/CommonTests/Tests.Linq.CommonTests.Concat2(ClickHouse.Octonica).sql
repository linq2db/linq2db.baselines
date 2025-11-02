-- ClickHouse.Octonica ClickHouse

SELECT
	p.FirstName
FROM
	Person p
WHERE
	concat(p.FirstName, ' ', toString(1)) = 'John 1'

