﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	Parent p
WHERE
	p.ParentID IN (1, 2, 3, 4) AND p.Value1 = 2 AND p.Value1 IS NOT NULL

