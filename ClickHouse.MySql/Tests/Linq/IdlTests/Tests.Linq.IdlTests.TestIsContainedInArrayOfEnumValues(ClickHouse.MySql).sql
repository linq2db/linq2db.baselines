﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.Value1,
	x.ParentID
FROM
	Parent x
WHERE
	x.Value1 IN (2, 3, 4)

