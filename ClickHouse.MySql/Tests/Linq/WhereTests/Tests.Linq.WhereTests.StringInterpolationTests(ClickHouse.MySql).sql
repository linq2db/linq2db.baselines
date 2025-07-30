BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Person p
WHERE
	concat(p.LastName, ', ', p.FirstName) = concat(p.LastName, ', ', p.FirstName) AND
	concat('<', p.LastName, ', ', p.FirstName, '>') = concat('<', p.LastName, ', ', p.FirstName, '>') AND
	concat('<', p.LastName, p.FirstName, '>') = concat('<', p.LastName, p.FirstName, '>') AND
	concat('<{p.LastName}, ', p.FirstName, ' {', p.LastName, '}>') = concat('<{p.LastName}, ', p.FirstName, ' {', p.LastName, '}>') AND
	concat('{}', p.LastName) = concat('{}', p.LastName)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	Person t1

