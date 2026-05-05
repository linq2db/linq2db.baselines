-- Oracle.11.Managed Oracle11

SELECT
	Coalesce((
		SELECT
			Coalesce(SUM(a_Children."ChildID"), 0)
		FROM
			"Child" a_Children
		WHERE
			p."ParentID" = a_Children."ParentID" AND a_Children."ParentID" > 1 AND
			a_Children."ParentID" < 10
	), 0)
FROM
	"Parent" p
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" c_1
		WHERE
			p."ParentID" = c_1."ParentID" AND c_1."ParentID" > 1
	)

