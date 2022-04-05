BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

BeforeExecute
RollbackTransaction
BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	1
FROM
	"Parent" p

