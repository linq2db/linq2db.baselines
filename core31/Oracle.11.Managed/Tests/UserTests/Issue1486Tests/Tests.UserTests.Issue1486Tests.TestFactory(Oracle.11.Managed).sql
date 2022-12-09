BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
--  Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	lw_Parent."c1",
	detail."ParentID",
	detail."ChildID"
FROM
	(
		SELECT DISTINCT
			t2."c1"
		FROM
			(
				SELECT
					a_Parent."ParentID" as "c1"
				FROM
					"Child" t1
						LEFT JOIN "Parent" a_Parent ON t1."ParentID" = a_Parent."ParentID"
				WHERE
					ROWNUM <= :take
			) t2
	) lw_Parent
		INNER JOIN "Child" detail ON lw_Parent."c1" = detail."ParentID"

BeforeExecute
--  Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	t1."ParentID",
	t1."ChildID",
	a_Parent."ParentID",
	a_Parent."Value1"
FROM
	"Child" t1
		LEFT JOIN "Parent" a_Parent ON t1."ParentID" = a_Parent."ParentID"
WHERE
	ROWNUM <= :take

BeforeExecute
DisposeTransaction
