﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p2.PersonID,
	concat(p2.FirstName, '')
FROM
	Person p2
WHERE
	p2.PersonID = 1

