BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" t1
	)
FROM
	"Parent" p

