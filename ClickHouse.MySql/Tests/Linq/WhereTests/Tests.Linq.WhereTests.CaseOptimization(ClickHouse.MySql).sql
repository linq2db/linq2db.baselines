﻿BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	x.Id,
	x.StringValue
FROM
	WhereWithString x
WHERE
	position(x.StringValue, 'Str') > 0 AND x.StringValue IS NOT NULL

