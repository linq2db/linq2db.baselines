﻿BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	COUNT(*)
FROM
	NotNullParent p
		INNER JOIN NotNullChild a_ChildInner ON p.ID = a_ChildInner.ParentID

