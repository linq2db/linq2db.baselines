﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Person p
WHERE
	position(p.FirstName, 'o%h') > 0 AND p.PersonID = 1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Person p
WHERE
	position(p.FirstName, 'o%h') <= 0 AND p.PersonID = 1

