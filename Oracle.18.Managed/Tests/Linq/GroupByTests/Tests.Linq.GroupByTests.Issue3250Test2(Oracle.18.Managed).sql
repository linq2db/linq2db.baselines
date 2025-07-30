BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	(CAST(COUNT(*) AS VarChar(255)) || ' items have not been processed, e.g. #' || CAST(MIN(s."PersonID") AS VarChar(255))) || '.'
FROM
	"Person" s
WHERE
	s."LastName" <> 'ERROR'
HAVING
	COUNT(*) > 0

