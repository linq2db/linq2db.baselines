﻿BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	p.FirstName
FROM
	Person p
WHERE
	concat(p.FirstName, ' I') = 'John I'

