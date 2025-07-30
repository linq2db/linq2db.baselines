﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	(CAST(COUNT(*) AS VarChar(255)) || ' items have not been processed, e.g. #' || Coalesce(CAST(MIN(g_1."PersonID") AS VarChar(255)), '')) || '.'
FROM
	"Person" g_1
WHERE
	g_1."LastName" <> 'ERROR'
HAVING
	COUNT(*) > 0

