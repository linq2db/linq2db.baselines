BeforeExecute
-- Oracle.11.Managed Oracle11

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

