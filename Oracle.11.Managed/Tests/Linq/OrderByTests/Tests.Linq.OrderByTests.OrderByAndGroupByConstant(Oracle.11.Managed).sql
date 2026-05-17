-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	t1."Count_1",
	t1."Expr",
	t1."Max_1"
FROM
	(
		SELECT
			COUNT(*) as "Count_1",
			1 + MIN(g_1."ChildID") as "Expr",
			MAX(g_1."ChildID") as "Max_1"
		FROM
			"Child" g_1
	) t1
WHERE
	ROWNUM <= :take

-- Oracle.11.Managed Oracle11

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

