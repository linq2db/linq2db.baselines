BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	rightUTF8(p.FirstName, 3)
FROM
	Person p
WHERE
	p.PersonID = 1

