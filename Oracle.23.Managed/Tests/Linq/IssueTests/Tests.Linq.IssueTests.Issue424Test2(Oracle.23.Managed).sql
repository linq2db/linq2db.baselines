BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 1

SELECT
	t2."ParentID",
	t2."Value1"
FROM
	(
		SELECT DISTINCT
			t1."ParentID",
			t1."Value1"
		FROM
			"Parent" t1
	) t2
ORDER BY
	t2."ParentID"
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

