﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	t3.ParentID, 
	t3.ChildID
FROM
	( 
		SELECT 
			t2.ParentID, 
			t2.ChildID, 
			ROWNUM as RN
		FROM
			( 
				SELECT 
					t1.ParentID, 
					t1.ChildID
				FROM
					Child t1
				ORDER BY
					t1.ChildID DESC,
					t1.ParentID + 1
			) t2
	) t3
WHERE
	t3.RN > 3

