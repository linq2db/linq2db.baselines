-- ClickHouse.Octonica ClickHouse

SELECT
	p.FirstName,
	p.PersonID,
	p.PersonID,
	p.LastName,
	concat(p.FirstName, ' ', p.LastName)
FROM
	Person p

