﻿BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = 2 AND p.Value1 IS NULL

