﻿BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	lowerUTF8(p.FirstName) = 'john' AND p.PersonID = 1

