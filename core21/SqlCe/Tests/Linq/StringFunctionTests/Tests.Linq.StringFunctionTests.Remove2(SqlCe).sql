﻿BeforeExecute
-- SqlCe

SELECT 
	[p].[FirstName], 
	[p].[PersonID], 
	[p].[LastName], 
	[p].[MiddleName], 
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Stuff([p].[FirstName], 2, 2, '') = 'Jn' AND [p].[PersonID] = 1

