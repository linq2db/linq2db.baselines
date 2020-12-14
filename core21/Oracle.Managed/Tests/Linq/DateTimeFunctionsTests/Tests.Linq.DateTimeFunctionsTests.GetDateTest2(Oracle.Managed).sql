BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 5

SELECT
	Trunc(CURRENT_TIMESTAMP, 'DD'),
	Count(*)
FROM
	"Parent" v
		INNER JOIN "Child" s ON v."ParentID" = s."ParentID"
WHERE
	v."Value1" > 0
FETCH NEXT :take ROWS ONLY

