﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 1

SELECT 
	t3.ParentID, 
	t3.Value1
FROM
	( 
		SELECT 
			t2.ParentID, 
			t2.Value1, 
			ROWNUM as RN
		FROM
			( 
				SELECT DISTINCT 
					t1.ParentID, 
					t1.Value1
				FROM
					Parent t1
				ORDER BY
					t1.ParentID DESC
			) t2
		WHERE
			ROWNUM <= (:skip + :take)
	) t3
WHERE
	t3.RN > :skip

