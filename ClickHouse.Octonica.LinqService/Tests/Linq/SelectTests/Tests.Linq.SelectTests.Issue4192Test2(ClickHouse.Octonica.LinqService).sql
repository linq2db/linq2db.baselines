﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	i.Name,
	i.ParentId
FROM
	Issue4192TableNullable i
WHERE
	i.ParentId = 12

