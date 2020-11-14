BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 3

SELECT
	Count(*)
FROM
	(
		SELECT
			t1."Value1"
		FROM
			"Parent" t1
		ORDER BY
			t1."ParentID"
		FETCH NEXT :take ROWS ONLY
	) t2

