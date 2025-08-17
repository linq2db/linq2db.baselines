BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

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

