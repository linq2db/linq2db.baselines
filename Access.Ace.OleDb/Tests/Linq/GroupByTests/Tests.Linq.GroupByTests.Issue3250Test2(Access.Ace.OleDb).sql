﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	(CStr(COUNT(*)) + ' items have not been processed, e.g. #' + IIF(MIN([s].[PersonID]) IS NOT NULL, CStr(MIN([s].[PersonID])), NULL)) + '.'
FROM
	[Person] [s]
WHERE
	[s].[LastName] <> 'ERROR'
HAVING
	COUNT(*) > 0

