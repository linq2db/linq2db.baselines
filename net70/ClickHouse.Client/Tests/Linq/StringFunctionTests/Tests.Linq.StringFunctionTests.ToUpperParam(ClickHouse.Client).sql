﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	upperUTF8(p.FirstName) = 'JOHN' AND p.PersonID = toInt32(1)

