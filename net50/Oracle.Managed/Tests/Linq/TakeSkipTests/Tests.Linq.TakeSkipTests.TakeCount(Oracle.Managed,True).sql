BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 5

SELECT
	Count(*)
FROM
	(
		SELECT
			t1."ParentID",
			t1."ChildID"
		FROM
			"Child" t1
		FETCH NEXT :take ROWS ONLY
	) t2

