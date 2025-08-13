BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	t1.COUNT_1,
	t1."c1",
	t1.MAX_1
FROM
	(
		SELECT
			COUNT(*) as COUNT_1,
			1 + MIN(g_1."ChildID") as "c1",
			MAX(g_1."ChildID") as MAX_1
		FROM
			"Child" g_1
	) t1
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

