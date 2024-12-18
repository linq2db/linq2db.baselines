﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	right_1.ParentID
FROM
	Parent t1
		FULL JOIN Parent right_1
			INNER JOIN Parent right2 ON right_1.Value1 = right2.Value1 + 2
		ON right_1.Value1 + 2 = t1.Value1 AND right_1.Value1 IS NOT NULL AND t1.Value1 IS NOT NULL OR right_1.Value1 IS NULL AND t1.Value1 IS NULL
ORDER BY
	t1.ParentID

