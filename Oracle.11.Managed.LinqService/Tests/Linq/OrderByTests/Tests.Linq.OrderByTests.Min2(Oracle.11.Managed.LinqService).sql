﻿BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @take Int32
SET     @take = 3

SELECT
	MIN(t3."ParentID")
FROM
	(
		SELECT
			t2."ParentID"
		FROM
			(
				SELECT
					t1."ParentID"
				FROM
					"Parent" t1
				ORDER BY
					t1."ParentID"
			) t2
		WHERE
			ROWNUM <= :take
	) t3

