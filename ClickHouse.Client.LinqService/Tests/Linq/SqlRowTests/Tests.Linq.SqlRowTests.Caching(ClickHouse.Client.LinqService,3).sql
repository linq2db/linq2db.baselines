﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	Ints i
WHERE
	i.Two = i.One * 2 AND i.Three = 3

