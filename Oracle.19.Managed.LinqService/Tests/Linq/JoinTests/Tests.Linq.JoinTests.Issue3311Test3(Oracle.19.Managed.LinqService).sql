BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	u."PersonID",
	x."PersonID"
FROM
	"Person" u
		CROSS APPLY (
			SELECT
				l."PersonID"
			FROM
				(
					SELECT
						1 as "c1"
					FROM SYS.DUAL
				) r
					LEFT JOIN "Patient" l ON l."PersonID" = u."PersonID"
		) x

