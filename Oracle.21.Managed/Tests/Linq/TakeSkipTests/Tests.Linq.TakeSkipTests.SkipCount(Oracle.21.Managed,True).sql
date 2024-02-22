BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 2

SELECT
	Count(*)
FROM
	(
		SELECT
			t1."ParentID"
		FROM
			"Child" t1
		OFFSET :skip ROWS
	) t2

