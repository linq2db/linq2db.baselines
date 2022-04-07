BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

BeforeExecute
RollbackTransaction
BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	1
FROM
	"Parent" p

