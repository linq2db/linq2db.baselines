﻿BeforeExecute
--  Sybase.Managed Sybase

SELECT
	[pp].[PersonID],
	'  ' + [pp].[FirstName] + ' '
FROM
	[Person] [pp]
WHERE
	[pp].[PersonID] = 1 AND RTRIM('  ' + [pp].[FirstName] + ' ') = '  John'

