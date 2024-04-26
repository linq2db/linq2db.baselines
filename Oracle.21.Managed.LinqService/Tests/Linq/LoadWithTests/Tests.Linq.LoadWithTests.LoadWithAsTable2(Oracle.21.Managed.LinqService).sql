﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t."ParentID",
	t."ChildID",
	t."GrandChildID",
	a_Child."ParentID" as "ParentID_1",
	a_Child."ChildID" as "ChildID_1",
	a_Parent."ParentID" as "ParentID_2",
	a_Parent."Value1"
FROM
	"GrandChild" t
		LEFT JOIN "Child" a_Child ON (t."ParentID" = a_Child."ParentID" OR t."ParentID" IS NULL AND a_Child."ParentID" IS NULL) AND (t."ChildID" = a_Child."ChildID" OR t."ChildID" IS NULL AND a_Child."ChildID" IS NULL)
		LEFT JOIN "Parent" a_Parent ON a_Child."ParentID" = a_Parent."ParentID"
FETCH NEXT 1 ROWS ONLY

