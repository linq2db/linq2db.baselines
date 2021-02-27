﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	gr."ParentID",
	gr."ChildID",
	a_Parent."ParentID",
	a_Parent."Value1"
FROM
	"Parent" p
		LEFT JOIN "Child" gr ON p."Value1" = gr."ParentID"
		LEFT JOIN "Parent" a_Parent ON gr."ParentID" = a_Parent."ParentID"

