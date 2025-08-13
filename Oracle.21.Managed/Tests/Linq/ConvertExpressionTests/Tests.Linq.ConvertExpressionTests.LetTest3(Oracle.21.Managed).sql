BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			t1."ParentID"
		FROM
			"Child" t1
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Parent" p

