﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID"
FROM
	"Parent" p
		OUTER APPLY (
			SELECT DISTINCT
				a_Children."ParentID"
			FROM
				"Child" a_Children
			WHERE
				p."ParentID" = a_Children."ParentID"
		) t1

