BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" c_1
		WHERE
			p."ParentID" = c_1."ParentID" AND c_1."ChildID" > 0
	)
FROM
	"Parent" p

