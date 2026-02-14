-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			COUNT(*) as "Count_1"
		FROM
			"Child" t1
	)
FROM
	"Parent" p

