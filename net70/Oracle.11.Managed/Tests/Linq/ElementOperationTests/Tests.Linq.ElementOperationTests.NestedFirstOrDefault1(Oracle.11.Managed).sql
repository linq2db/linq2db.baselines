BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
WHERE
	ROWNUM <= :take

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	1
FROM
	"Parent" p

