﻿BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	COUNT(*)
FROM
	InstanceClass t
WHERE
	concat(toString(t.Id), toString(t.Value)) = concat(toString(t.Id), toString(t.Value))

