BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	CASE
		WHEN p."PersonID" = 1 THEN 1
		ELSE 0
	END
FROM
	"Person" p

