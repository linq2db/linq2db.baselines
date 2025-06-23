BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	NOT position(p.FirstName, 'Joh') > 0 AND p.PersonID = 1

