﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	p.FirstName
FROM
	Person p
UNION ALL
SELECT
	concat(p_1.FirstName, '/', p_1.LastName) as FirstName
FROM
	Person p_1

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	concat(p.FirstName, '/', p.LastName) as FirstName
FROM
	Person p
UNION ALL
SELECT
	p_1.FirstName as FirstName
FROM
	Person p_1

