﻿BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	lw_Parent."ParentID",
	detail."ParentID",
	detail."ChildID"
FROM
	(
		SELECT DISTINCT
			p."ParentID"
		FROM
			"Parent" p
		WHERE
			p."ParentID" < 2
	) lw_Parent
		INNER JOIN "Child" detail ON lw_Parent."ParentID" = detail."ParentID"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	lw_Parent."ParentID",
	detail."ParentID",
	detail."ChildID",
	detail."GrandChildID"
FROM
	(
		SELECT DISTINCT
			p."ParentID"
		FROM
			"Parent" p
		WHERE
			p."ParentID" < 2
	) lw_Parent
		INNER JOIN "GrandChild" detail ON lw_Parent."ParentID" = detail."ParentID"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" < 2

