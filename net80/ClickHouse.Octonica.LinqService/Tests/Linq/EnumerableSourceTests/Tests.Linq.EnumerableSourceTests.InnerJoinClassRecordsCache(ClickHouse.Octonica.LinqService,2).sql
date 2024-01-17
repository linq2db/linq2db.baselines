BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
		INNER JOIN (
			SELECT toInt32(3) AS PersonID
			UNION ALL
			SELECT toInt32(4)) n ON p.PersonID = n.PersonID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
		INNER JOIN (
			SELECT toInt32(5) AS PersonID
			UNION ALL
			SELECT toInt32(6)) n ON p.PersonID = n.PersonID

