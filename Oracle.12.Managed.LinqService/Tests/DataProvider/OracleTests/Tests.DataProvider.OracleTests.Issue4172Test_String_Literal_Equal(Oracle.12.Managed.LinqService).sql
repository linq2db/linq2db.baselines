﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	u.ROLE
FROM
	ISSUE4172TABLE u
WHERE
	u.ROLE IS NULL

