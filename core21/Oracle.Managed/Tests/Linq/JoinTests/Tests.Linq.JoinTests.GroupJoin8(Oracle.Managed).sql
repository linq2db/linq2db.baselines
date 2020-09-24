﻿BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Parent p
		OUTER APPLY (
			SELECT
				c_1.ParentID,
				c_1.ChildID
			FROM
				Child c_1
			WHERE
				c_1.ParentID = p.ParentID
			ORDER BY
				c_1.ChildID
			FETCH NEXT :take ROWS ONLY
		) t1

