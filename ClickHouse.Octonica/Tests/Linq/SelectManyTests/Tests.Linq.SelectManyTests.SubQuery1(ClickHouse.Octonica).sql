﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p1.PersonID,
	p.FirstName
FROM
	Person p1,
	Person p
WHERE
	p1.PersonID = p.PersonID AND p.PersonID = toInt32(1)

