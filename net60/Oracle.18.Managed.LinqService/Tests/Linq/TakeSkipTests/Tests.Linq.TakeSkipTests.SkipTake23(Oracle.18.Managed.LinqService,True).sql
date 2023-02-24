BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @skip_1 Int32
SET     @skip_1 = 3
DECLARE @skip Int32
SET     @skip = 5

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	t1."ChildID"
OFFSET :skip_1 ROWS FETCH NEXT :skip ROWS ONLY 

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @skip_1 Int32
SET     @skip_1 = 3
DECLARE @skip Int32
SET     @skip = 5

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	t1."ChildID"
OFFSET :skip_1 ROWS FETCH NEXT :skip ROWS ONLY 

