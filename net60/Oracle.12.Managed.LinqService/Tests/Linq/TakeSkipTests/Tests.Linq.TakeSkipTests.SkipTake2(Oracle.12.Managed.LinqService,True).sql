BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @skip_1 Int32
SET     @skip_1 = 2
DECLARE @skip Int32
SET     @skip = 5

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	t1."ChildID" DESC
OFFSET :skip_1 ROWS FETCH NEXT :skip ROWS ONLY 

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @skip_1 Int32
SET     @skip_1 = 2
DECLARE @skip Int32
SET     @skip = 5

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	t1."ChildID" DESC
OFFSET :skip_1 ROWS FETCH NEXT :skip ROWS ONLY 

