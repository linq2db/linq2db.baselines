-- Oracle.11.Managed Oracle11

SELECT
	(CAST(COUNT(*) AS VarChar(255)) || ' items have not been processed, e.g. #' || Coalesce(CAST(MIN(s."PersonID") AS VarChar(255)), '')) || '.'
FROM
	"Person" s
WHERE
	s."LastName" <> 'ERROR'
HAVING
	COUNT(*) > 0

