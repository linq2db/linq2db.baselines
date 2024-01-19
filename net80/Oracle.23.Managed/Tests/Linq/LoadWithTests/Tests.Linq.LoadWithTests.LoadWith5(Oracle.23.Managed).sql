﻿BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	lw_Child."ParentID_1",
	lw_Child."ParentID",
	lw_Child."ChildID",
	detail_1."ParentID",
	detail_1."ChildID",
	detail_1."GrandChildID",
	a_Child."ParentID",
	a_Child."ChildID",
	a_Parent."ParentID",
	a_Parent."Value1"
FROM
	(
		SELECT DISTINCT
			detail."ParentID",
			detail."ChildID",
			lw_Parent."ParentID" as "ParentID_1"
		FROM
			(
				SELECT DISTINCT
					t1."ParentID"
				FROM
					"Parent" t1
			) lw_Parent
				INNER JOIN "Child" detail ON lw_Parent."ParentID" = detail."ParentID"
	) lw_Child
		INNER JOIN "GrandChild" detail_1
			LEFT JOIN "Child" a_Child ON detail_1."ParentID" = a_Child."ParentID" AND detail_1."ChildID" = a_Child."ChildID"
		ON lw_Child."ParentID" = detail_1."ParentID" AND lw_Child."ChildID" = detail_1."ChildID"
		LEFT JOIN "Parent" a_Parent ON a_Child."ParentID" = a_Parent."ParentID"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	lw_Parent."ParentID",
	detail."ParentID",
	detail."ChildID"
FROM
	(
		SELECT DISTINCT
			t1."ParentID"
		FROM
			"Parent" t1
	) lw_Parent
		INNER JOIN "Child" detail ON lw_Parent."ParentID" = detail."ParentID"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			Count(*)
		FROM
			"GrandChild" t1
		WHERE
			p."ParentID" = t1."ParentID"
	),
	p."ParentID",
	p."Value1"
FROM
	"Parent" p

