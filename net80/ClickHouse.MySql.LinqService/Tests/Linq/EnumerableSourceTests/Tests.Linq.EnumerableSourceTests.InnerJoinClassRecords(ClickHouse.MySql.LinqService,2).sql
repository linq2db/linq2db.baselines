BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
		INNER JOIN (
			SELECT toInt32(1) AS PersonID
			UNION ALL
			SELECT toInt32(2)) n ON p.PersonID = n.PersonID

