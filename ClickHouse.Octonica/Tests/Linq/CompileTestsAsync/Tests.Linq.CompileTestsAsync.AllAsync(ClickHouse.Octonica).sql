﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			AsyncDataTable c_1
		WHERE
			c_1.Id <> 2
	)

