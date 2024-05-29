BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	(
		SELECT
			t1."ParentID"
		FROM
			"Child" t1
		WHERE
			ROWNUM <= 1
	)
FROM
	"Parent" p

