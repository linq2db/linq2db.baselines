BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		INNER JOIN "Parent" pp ON p."Value1" = pp."Value1"
ORDER BY
	pp."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			"Child" a_Children
		WHERE
			p."ParentID" = a_Children."ParentID"
	)

