﻿BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	concat(toString(c_1.ChildID), ',', Coalesce('123', ''))
FROM
	Child c_1
LIMIT 1

