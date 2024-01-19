﻿BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

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
-- Oracle.19.Managed Oracle.Managed Oracle12

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

