-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	COUNT(*) as "Count_1",
	1 + MIN(g_1."ChildID") as "Expr",
	MAX(g_1."ChildID") as "Max_1"
FROM
	"Child" g_1
FETCH NEXT :take ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

