BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN MOD(p."ParentID", 2) = 0 THEN CASE
			WHEN MOD(p."ParentID", 3) = 0 THEN 1
			ELSE 0
		END
		WHEN MOD(p."ParentID", 4) = 0 THEN CASE
			WHEN p."ParentID" > 0 THEN 1
			ELSE 0
		END
		ELSE CASE
			WHEN p."ParentID" < 5 THEN 1
			ELSE 0
		END
	END
FROM
	"Parent" p

BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	m_1."ParentID",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT DISTINCT
			t1."ParentID"
		FROM
			"Parent" t1
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

