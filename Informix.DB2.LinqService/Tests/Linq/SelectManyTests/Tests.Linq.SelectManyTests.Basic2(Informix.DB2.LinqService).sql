﻿BeforeExecute
--  Informix.DB2 Informix

SELECT
	t1.ParentID + 1
FROM
	Parent p
		CROSS JOIN Child t1

