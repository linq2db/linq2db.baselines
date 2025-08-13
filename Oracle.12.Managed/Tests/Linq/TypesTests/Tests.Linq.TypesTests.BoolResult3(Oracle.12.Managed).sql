BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN p."PersonID" = 1 THEN 1
		ELSE 0
	END
FROM
	"Person" p

