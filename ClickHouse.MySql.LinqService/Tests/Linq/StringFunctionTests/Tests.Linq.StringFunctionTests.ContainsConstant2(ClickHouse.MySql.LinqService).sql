BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	position(p.FirstName, 'o%h') > 0 AND p.PersonID = 1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	position(p.FirstName, 'o%h') <= 0 AND p.PersonID = 1

