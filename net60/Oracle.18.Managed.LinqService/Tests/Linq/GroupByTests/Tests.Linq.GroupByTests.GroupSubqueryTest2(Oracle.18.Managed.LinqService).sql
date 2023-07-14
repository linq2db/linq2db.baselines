BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	pmp1."ChildID"
FROM
	"Child" pmp1,
	(
		SELECT
			pmp."ParentID"
		FROM
			"Child" pmp
		GROUP BY
			pmp."ParentID"
	) t1

