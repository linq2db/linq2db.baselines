BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Parent" t1
		WHERE
			t1."ParentID" = p."ParentID"
	)
FROM
	"Parent" p

