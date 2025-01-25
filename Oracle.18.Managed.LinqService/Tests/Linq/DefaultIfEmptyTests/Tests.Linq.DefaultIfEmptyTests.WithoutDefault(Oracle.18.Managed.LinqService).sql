BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 0

SELECT
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT
			1 as "c1"
		FROM SYS.DUAL
	) t2
		LEFT JOIN (
			SELECT
				t1."ParentID",
				t1."ChildID"
			FROM
				"Child" t1
			FETCH NEXT :take ROWS ONLY
		) d ON 1=1

