BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t3."ParentID",
	detail."ParentID",
	detail."ChildID"
FROM
	(
		SELECT DISTINCT
			t2."ParentID"
		FROM
			(
				SELECT
					t1."ParentID"
				FROM
					"Parent" t1
				FETCH NEXT :take ROWS ONLY
			) t2
	) t3
		INNER JOIN "Child" detail ON t3."ParentID" = detail."ParentID"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t1."ParentID"
FROM
	"Parent" t1
FETCH NEXT :take ROWS ONLY

BeforeExecute
DisposeTransaction
