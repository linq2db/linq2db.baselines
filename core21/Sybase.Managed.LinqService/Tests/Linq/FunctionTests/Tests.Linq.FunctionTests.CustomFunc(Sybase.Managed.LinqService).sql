﻿BeforeExecute
-- Sybase.Managed Sybase

SELECT 
	[p].[FirstName], 
	[p].[PersonID], 
	[p].[LastName], 
	[p].[MiddleName], 
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[LastName] + ', ' + [p].[FirstName] = 'Pupkin, John'

