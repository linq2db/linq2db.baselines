BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	CASE
		WHEN r."PersonID" IN (1, 2, 3) THEN 1
		ELSE 0
	END
FROM
	"Person" r

