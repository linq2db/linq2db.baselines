BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @skip_2 Int32
SET     @skip_2 = 3
DECLARE @skip_3 Int32
SET     @skip_3 = 5

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	t1."ChildID"
OFFSET :skip_2 ROWS FETCH NEXT :skip_3 ROWS ONLY 

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @skip_2 Int32
SET     @skip_2 = 3
DECLARE @skip_3 Int32
SET     @skip_3 = 5

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	t1."ChildID"
OFFSET :skip_2 ROWS FETCH NEXT :skip_3 ROWS ONLY 

