﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	(COUNT(*) || ' items have not been processed, e.g. #' || MIN(s."PersonID")) || '.'
FROM
	"Person" s
WHERE
	s."LastName" <> 'ERROR' AND COUNT(*) > 0

