﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.FirstName
FROM
	Person p
WHERE
	concat(p.FirstName, ' 12') = 'John 12'

