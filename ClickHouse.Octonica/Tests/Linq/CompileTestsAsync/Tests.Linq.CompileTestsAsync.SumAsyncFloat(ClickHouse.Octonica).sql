﻿BeforeExecute
--  ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	sumOrNull(toFloat32(c_1.Id))
FROM
	AsyncDataTable c_1
WHERE
	c_1.Id < 5

