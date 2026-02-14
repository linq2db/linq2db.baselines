-- Oracle.11.Managed Oracle11

SELECT
	p."ParentID",
	(
		SELECT
			c_1."ParentID" + 1 as V
		FROM
			"Child" c_1
		WHERE
			ROWNUM <= 1
	)
FROM
	"Parent" p

