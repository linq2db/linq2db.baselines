﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.Value1,
	p.ParentID
FROM
	Parent p
WHERE
	p.Value1 = 1 OR p.Value1 = 2

