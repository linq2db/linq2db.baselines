﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.ParentID,
	t.Value1
FROM
	Parent t

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t.ParentID,
	t.Value1
FROM
	Parent t
WHERE
	t.Value1 = 1 AND t.Value1 IS NOT NULL

