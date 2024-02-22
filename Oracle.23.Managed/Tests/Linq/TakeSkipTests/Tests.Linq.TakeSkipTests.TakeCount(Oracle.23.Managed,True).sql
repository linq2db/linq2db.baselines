BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 5

SELECT
	Count(*)
FROM
	(
		SELECT
			t1."ParentID"
		FROM
			"Child" t1
		FETCH NEXT :take ROWS ONLY
	) t2

