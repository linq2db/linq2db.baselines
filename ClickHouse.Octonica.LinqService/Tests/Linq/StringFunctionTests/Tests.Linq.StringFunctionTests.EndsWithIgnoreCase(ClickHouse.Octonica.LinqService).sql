﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	Person p
WHERE
	endsWith(p.FirstName, 'JOHN') AND p.PersonID = 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	Person p
WHERE
	NOT endsWith(p.FirstName, 'JOHN') AND p.PersonID = 1

