﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.PersonID,
	pp.FirstName,
	pp.PersonID,
	pp.LastName,
	pp.MiddleName,
	pp.Gender
FROM
	Person p
		LEFT JOIN Person pp ON pp.PersonID + 1 = p.PersonID

