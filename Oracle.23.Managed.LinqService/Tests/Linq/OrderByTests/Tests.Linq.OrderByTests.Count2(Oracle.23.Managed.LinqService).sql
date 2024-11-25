﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 3

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as "c1"
		FROM
			"Parent" t1
		ORDER BY
			t1."ParentID"
		FETCH NEXT :take ROWS ONLY
	) t2

