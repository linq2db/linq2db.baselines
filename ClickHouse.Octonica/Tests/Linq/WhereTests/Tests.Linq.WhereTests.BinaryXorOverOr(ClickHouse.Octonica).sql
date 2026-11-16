-- ClickHouse.Octonica ClickHouse
SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	bitOr(bitXor(p.PersonID, 1), 2) = 3

