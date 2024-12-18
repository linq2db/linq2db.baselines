BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" c_1
		WHERE
			p."ParentID" = c_1."ParentID"
	),
	(
		SELECT
			COUNT(*)
		FROM
			"GrandChild" g_1
		WHERE
			p."ParentID" = g_1."ParentID" AND g_1."ParentID" IS NOT NULL
	)
FROM
	"Parent" p

