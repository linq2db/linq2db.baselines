﻿BeforeExecute
-- Access AccessOleDb

SELECT
	[pp].[PersonID],
	'  ' + [pp].[FirstName] + ' '
FROM
	[Person] [pp]
WHERE
	Trim('  ' + [pp].[FirstName] + ' ') = 'John' AND [pp].[PersonID] = 1

