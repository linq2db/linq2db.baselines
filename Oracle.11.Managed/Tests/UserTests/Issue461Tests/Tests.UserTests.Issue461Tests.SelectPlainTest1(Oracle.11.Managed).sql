BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	(
		SELECT
			c_1."ParentID" + 1
		FROM
			"Child" c_1
		WHERE
			ROWNUM <= 1
	)
FROM
	"Parent" p

