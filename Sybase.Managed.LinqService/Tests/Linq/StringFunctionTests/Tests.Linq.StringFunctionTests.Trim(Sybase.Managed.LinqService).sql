﻿BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[pp].[PersonID],
	'  ' + [pp].[FirstName] + ' '
FROM
	[Person] [pp]
WHERE
	[pp].[PersonID] = 1 AND LTrim(RTrim('  ' + [pp].[FirstName] + ' ')) = 'John'

