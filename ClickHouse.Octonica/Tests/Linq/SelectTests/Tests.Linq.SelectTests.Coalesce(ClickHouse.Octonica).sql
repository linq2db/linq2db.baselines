﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.PersonID,
	p.FirstName,
	p.MiddleName
FROM
	Person p
WHERE
	p.PersonID = 1

