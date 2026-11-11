-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 2

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	t1."ChildID"
FETCH NEXT :take ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	(
		SELECT
			t1."ParentID"
		FROM
			"Parent" t1
		ORDER BY
			t1."ParentID"
		FETCH NEXT 1 ROWS ONLY
	)
FROM SYS.DUAL

