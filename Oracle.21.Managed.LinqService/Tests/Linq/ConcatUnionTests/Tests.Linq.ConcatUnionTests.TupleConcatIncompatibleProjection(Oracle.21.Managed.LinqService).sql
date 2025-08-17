BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	x."Value1",
	x."ParentID"
FROM
	"Parent" x
WHERE
	x."ParentID" > 3
UNION ALL
SELECT
	NULL,
	NULL
FROM
	"Parent" p2
WHERE
	p2."ParentID" <= 3

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

