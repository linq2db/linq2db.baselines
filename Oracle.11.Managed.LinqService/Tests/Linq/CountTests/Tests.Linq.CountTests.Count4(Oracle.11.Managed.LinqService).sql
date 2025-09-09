BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" t1
	)
FROM
	"Parent" p

