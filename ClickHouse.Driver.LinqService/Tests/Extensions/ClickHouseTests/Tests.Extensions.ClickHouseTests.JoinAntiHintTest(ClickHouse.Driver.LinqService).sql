﻿BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	p.ParentID,
	p.Value1
FROM
	Child t1
		LEFT ANTI JOIN Parent p ON t1.ParentID = p.ParentID

