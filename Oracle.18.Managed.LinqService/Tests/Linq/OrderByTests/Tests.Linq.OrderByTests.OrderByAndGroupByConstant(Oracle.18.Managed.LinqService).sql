BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @take Int32
SET     @take = 1

SELECT
	COUNT(*) as COUNT_1,
	1 + MIN(g_1."ChildID") as "c1",
	MAX(g_1."ChildID") as MAX_1
FROM
	"Child" g_1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

