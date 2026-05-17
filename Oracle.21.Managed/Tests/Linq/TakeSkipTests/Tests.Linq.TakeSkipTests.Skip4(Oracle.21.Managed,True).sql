-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 3

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	t1."ChildID" DESC
OFFSET :skip ROWS

