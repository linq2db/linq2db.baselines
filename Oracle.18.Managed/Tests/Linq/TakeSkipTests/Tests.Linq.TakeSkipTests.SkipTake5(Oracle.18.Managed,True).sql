-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 2
DECLARE @take Int32
SET     @take = 5

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

