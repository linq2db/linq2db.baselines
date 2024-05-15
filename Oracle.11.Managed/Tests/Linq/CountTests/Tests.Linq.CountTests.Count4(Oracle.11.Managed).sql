BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" t1
	)
FROM
	"Parent" p

