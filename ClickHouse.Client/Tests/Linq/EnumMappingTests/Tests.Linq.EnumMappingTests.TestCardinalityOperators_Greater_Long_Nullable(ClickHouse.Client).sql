﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Property1,
	t1.Property2,
	t1.Property3,
	t1.Property4,
	t1.Property5,
	t1.Property6
FROM
	EnumCardinality t1
WHERE
	t1.Property6 > 'B'
LIMIT 2

