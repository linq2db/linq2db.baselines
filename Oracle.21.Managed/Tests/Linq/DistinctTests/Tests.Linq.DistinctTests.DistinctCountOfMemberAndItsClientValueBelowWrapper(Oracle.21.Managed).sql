-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			c_1."ChildID"
		FROM
			"Child" c_1
	) t1

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 100

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			t1."ChildID"
		FROM
			(
				SELECT
					c_1."ChildID"
				FROM
					"Child" c_1
				FETCH NEXT :take ROWS ONLY
			) t1
	) t2

