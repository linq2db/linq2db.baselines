﻿BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	p.FirstName
FROM
	Person p
WHERE
	p.FirstName IS NULL
LIMIT 1

BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	p.FirstName
FROM
	Person p
WHERE
	p.FirstName = 'John'
LIMIT 1

