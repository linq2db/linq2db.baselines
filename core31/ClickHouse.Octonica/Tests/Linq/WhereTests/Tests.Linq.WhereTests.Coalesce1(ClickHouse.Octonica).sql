﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.PersonID = toInt32(1) AND Coalesce(p.MiddleName, 'None') = 'None' AND
	Coalesce(p.FirstName, 'None') = 'John'

