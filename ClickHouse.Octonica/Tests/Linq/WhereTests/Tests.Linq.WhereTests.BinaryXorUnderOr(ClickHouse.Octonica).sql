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
	bitOr(p.PersonID, bitXor(p.PersonID, 1)) = p.PersonID

