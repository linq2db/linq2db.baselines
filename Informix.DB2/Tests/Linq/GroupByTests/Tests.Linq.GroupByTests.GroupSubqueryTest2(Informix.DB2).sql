﻿BeforeExecute
--  Informix.DB2 Informix

SELECT
	pmp1.ChildID
FROM
	Child pmp1
		CROSS JOIN (
			SELECT
				pmp.ParentID
			FROM
				Child pmp
			GROUP BY
				pmp.ParentID
		) pmp_1

BeforeExecute
--  Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

