﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	(CStr(COUNT(*)) + ' items have not been processed, e.g. #' + CStr(MIN([s].[PersonID]))) + '.'
FROM
	[Person] [s]
WHERE
	[s].[LastName] <> 'ERROR' AND COUNT(*) > 0

