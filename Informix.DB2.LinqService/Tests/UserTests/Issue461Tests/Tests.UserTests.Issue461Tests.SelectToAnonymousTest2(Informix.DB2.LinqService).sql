﻿BeforeExecute
--  Informix.DB2 Informix

SELECT
	t1.Id,
	t1.ParentID
FROM
	Parent sep
		LEFT JOIN (
			SELECT FIRST 1
				l.ParentID + 1 as Id,
				l.ParentID
			FROM
				Child l
		) t1 ON 1=1

