﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t.ID
FROM
	(
		SELECT
			ch."ParentID" + p."ParentID" as ID
		FROM
			"Child" ch
				INNER JOIN "Parent" p ON ch."ParentID" = p."ParentID"
	) t
WHERE
	t.ID > 2

