﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	t2.ParentID,
	t2.Value1
FROM
	Parent t2
		LEFT JOIN (
			SELECT FIRST 1
				r.Value1 as cond
			FROM
				Parent r
		) t1 ON 1=1
WHERE
	t1.cond IS NOT NULL

