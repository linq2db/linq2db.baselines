﻿BeforeExecute
BeginTransaction
BeforeExecute
--  Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	lw_Parent."ParentID",
	detail."ParentID",
	detail."ChildID"
FROM
	(
		SELECT DISTINCT
			t2."ParentID"
		FROM
			(
				SELECT
					a_Parent."ParentID"
				FROM
					"Child" t1
						LEFT JOIN "Parent" a_Parent ON t1."ParentID" = a_Parent."ParentID"
				FETCH NEXT :take ROWS ONLY
			) t2
	) lw_Parent
		INNER JOIN "Child" detail ON lw_Parent."ParentID" = detail."ParentID"

BeforeExecute
--  Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t1."ParentID",
	t1."ChildID",
	a_Parent."ParentID" as "ParentID_1",
	a_Parent."Value1"
FROM
	"Child" t1
		LEFT JOIN "Parent" a_Parent ON t1."ParentID" = a_Parent."ParentID"
FETCH NEXT :take ROWS ONLY

BeforeExecute
RollbackTransaction
