BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" t1
	)
FROM
	"Parent" p

