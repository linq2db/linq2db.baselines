﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Person p
WHERE
	concat(p.LastName, ', ', p.FirstName) = concat(p.LastName, ', ', p.FirstName) AND
	concat('<', p.LastName, ', ', p.FirstName, '>') = concat('<', p.LastName, ', ', p.FirstName, '>') AND
	concat('<', p.LastName, p.FirstName, '>') = concat('<', p.LastName, p.FirstName, '>') AND
	concat('<{p.LastName}, ', p.FirstName, ' {', p.LastName, '}>') = concat('<{p.LastName}, ', p.FirstName, ' {', p.LastName, '}>') AND
	concat('{}', p.LastName) = concat('{}', p.LastName)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Person t1

