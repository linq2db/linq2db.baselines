﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.Id,
	LAST_VALUE(p.Id) RESPECT NULLS OVER(ORDER BY p.Order)
FROM
	Position p
WHERE
	p.Group = 7
ORDER BY
	p.Id

