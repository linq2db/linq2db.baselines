BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 100

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ParentID" IN (
		SELECT
			p."ParentID"
		FROM
			"Parent" p
		OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 
	)

