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
			SELECT toInt32(2) AS PersonID
			UNION ALL
			SELECT toInt32(3)) n ON p.PersonID = n.PersonID

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
			SELECT toInt32(4) AS PersonID
			UNION ALL
			SELECT toInt32(5)) n ON p.PersonID = n.PersonID

