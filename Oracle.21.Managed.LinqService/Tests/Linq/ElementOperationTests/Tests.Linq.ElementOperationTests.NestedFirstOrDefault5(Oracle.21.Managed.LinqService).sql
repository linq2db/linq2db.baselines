﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t2."ParentID",
	t2."ChildID"
FROM
	"GrandChild" p
		LEFT JOIN "Child" a_Child ON p."ParentID" = a_Child."ParentID" AND p."ChildID" = a_Child."ChildID"
		LEFT JOIN "Parent" a_Parent ON a_Child."ParentID" = a_Parent."ParentID"
		OUTER APPLY (
			SELECT
				t1."ParentID",
				t1."ChildID"
			FROM
				"Child" t1
			WHERE
				a_Parent."ParentID" = t1."ParentID"
			ORDER BY
				t1."ChildID"
			FETCH NEXT :take ROWS ONLY
		) t2
WHERE
	p."ChildID" > 0

