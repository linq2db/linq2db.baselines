﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.PersonID,
	p.FirstName,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
ORDER BY
	p.PersonID

