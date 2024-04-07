BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

BeforeExecute
DisposeTransaction
BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	1
FROM
	"Parent" p

