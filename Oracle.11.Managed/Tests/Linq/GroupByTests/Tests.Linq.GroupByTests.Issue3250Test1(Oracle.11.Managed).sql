﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	(COUNT(*) || ' items have not been processed, e.g. #' || MIN(g_1."PersonID")) || '.'
FROM
	"Person" g_1
WHERE
	g_1."LastName" <> 'ERROR' AND COUNT(*) > 0

