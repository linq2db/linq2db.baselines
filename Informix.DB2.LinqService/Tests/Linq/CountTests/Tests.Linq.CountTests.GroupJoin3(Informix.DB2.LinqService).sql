﻿BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			Child c_1
		WHERE
			t1.ParentID = c_1.ParentID
	)
FROM
	Parent t1

