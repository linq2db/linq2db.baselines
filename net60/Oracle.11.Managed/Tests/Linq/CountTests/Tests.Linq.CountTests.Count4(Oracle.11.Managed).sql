BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" t1
	)
FROM
	"Parent" p

