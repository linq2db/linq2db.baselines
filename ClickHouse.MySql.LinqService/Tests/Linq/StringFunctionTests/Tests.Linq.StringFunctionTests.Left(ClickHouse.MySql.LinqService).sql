﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	leftUTF8(p.FirstName, 2) = 'Jo' AND p.PersonID = 1

