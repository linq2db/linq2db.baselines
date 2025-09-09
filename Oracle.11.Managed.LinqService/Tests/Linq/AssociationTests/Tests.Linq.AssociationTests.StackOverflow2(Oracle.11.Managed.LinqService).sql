BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			"Parent" a_Children
		WHERE
			p."ParentID" = a_Children."Value1"
	) <> 0

