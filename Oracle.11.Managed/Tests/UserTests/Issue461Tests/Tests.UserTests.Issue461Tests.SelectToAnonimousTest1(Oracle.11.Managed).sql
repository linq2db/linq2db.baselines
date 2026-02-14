-- Oracle.11.Managed Oracle11

SELECT
	(
		SELECT
			l."ParentID" + 1 as "Id"
		FROM
			"Child" l
		WHERE
			ROWNUM <= 1
	)
FROM
	"Parent" sep

