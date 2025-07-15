BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = 2

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
WHERE
	p.PersonID = 2
LIMIT 2

