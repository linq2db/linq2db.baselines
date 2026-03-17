-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			t1."ChildID"
		FROM
			"Child" t1
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Parent" p

