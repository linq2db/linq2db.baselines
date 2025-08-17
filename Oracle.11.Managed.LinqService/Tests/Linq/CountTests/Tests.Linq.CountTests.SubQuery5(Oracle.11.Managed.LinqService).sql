BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Parent" p1
		WHERE
			p1."ParentID" = p."ParentID"
	)
FROM
	"Parent" p

