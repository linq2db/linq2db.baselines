-- Oracle.11.Managed Oracle11

SELECT
	p."ParentID",
	(
		SELECT
			SUM(c_1."ChildID")
		FROM
			"Child" c_1
		WHERE
			p."ParentID" = c_1."ParentID" AND c_1."ChildID" <> p."ParentID" * 10 + 1
	)
FROM
	"Parent" p
WHERE
	p."ParentID" > 0

