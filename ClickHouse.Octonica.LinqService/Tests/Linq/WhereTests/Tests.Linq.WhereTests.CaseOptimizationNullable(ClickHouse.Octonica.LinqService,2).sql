﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.Id,
	x.StringValue
FROM
	WhereWithString x
WHERE
	x.Id = 2

