﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p1.FirstName,
	p1.PersonID,
	p1.LastName,
	p1.MiddleName,
	p1.Gender
FROM
	Person p1,
	Person p2
WHERE
	p1.PersonID = p2.PersonID AND startsWith(Replace(p1.FirstName, 'J', '%'), Replace(p2.FirstName, 'J', '%')) = true

