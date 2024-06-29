﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	CASE
		WHEN p."ParentID" IS NOT NULL THEN p."Value1"
		ELSE NULL
	END,
	CASE
		WHEN c_1."ParentID" IS NOT NULL THEN CASE
			WHEN a_Parent."ParentID" IS NOT NULL THEN a_Parent."Value1"
			ELSE NULL
		END
		ELSE NULL
	END
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON c_1."ParentID" = p."ParentID"
		LEFT JOIN "Parent" a_Parent ON c_1."ParentID" = a_Parent."ParentID"
WHERE
	(p."ParentID" > 0 OR p."Value1" > 0 OR a_Parent."Value1" > 0)
ORDER BY
	p."ParentID",
	p."Value1",
	a_Parent."Value1"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."ChildID",
	a_Parent."ParentID",
	a_Parent."Value1"
FROM
	"Child" t1
		LEFT JOIN "Parent" a_Parent ON t1."ParentID" = a_Parent."ParentID"

