﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.PersonID,
	p.FirstName,
	p.LastName,
	p.MiddleName
FROM
	Person p
WHERE
	p.PersonID = 1
LIMIT 2

