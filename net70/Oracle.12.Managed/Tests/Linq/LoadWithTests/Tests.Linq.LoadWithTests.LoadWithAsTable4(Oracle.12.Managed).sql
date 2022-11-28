﻿BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	lw_Parent."ParentID",
	detail."ParentID",
	detail."ChildID",
	a_Parent."ParentID",
	a_Parent."Value1"
FROM
	(
		SELECT DISTINCT
			t1."ParentID"
		FROM
			(
				SELECT
					t."ParentID"
				FROM
					"Parent" t
				FETCH NEXT :take ROWS ONLY
			) t1
	) lw_Parent
		INNER JOIN "Child" detail ON lw_Parent."ParentID" = detail."ParentID"
		LEFT JOIN "Parent" a_Parent ON detail."ParentID" = a_Parent."ParentID"

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t."ParentID",
	t."Value1"
FROM
	"Parent" t
FETCH NEXT :take ROWS ONLY

BeforeExecute
RollbackTransaction
