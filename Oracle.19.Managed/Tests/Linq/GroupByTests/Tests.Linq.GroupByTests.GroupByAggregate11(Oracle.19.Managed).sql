-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT DISTINCT
	CASE
		WHEN (
			SELECT
				AVG(a_Children."ParentID") as "Average"
			FROM
				"Child" a_Children
			WHERE
				g_1."ParentID" = a_Children."ParentID"
		) > 3D
			THEN 1
		ELSE 0
	END
FROM
	"Parent" g_1
WHERE
	(
		SELECT
			COUNT(*) as "Count_1"
		FROM
			"Child" a_Children_1
		WHERE
			g_1."ParentID" = a_Children_1."ParentID"
	) > 0

