-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 3

SELECT
	MIN(t2."ParentID")
FROM
	(
		SELECT
			t1."ParentID"
		FROM
			"Parent" t1
		ORDER BY
			t1."Value1"
		FETCH NEXT :take ROWS ONLY
	) t2

