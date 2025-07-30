﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	(COUNT(*)::text || ' items have not been processed, e.g. #' || MIN(s."PersonID")::text) || '.'
FROM
	"Person" s
WHERE
	s."LastName" <> 'ERROR'
HAVING
	COUNT(*) > 0

