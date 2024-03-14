﻿BeforeExecute
-- SqlCe
DECLARE @param NVarChar(4) -- String
SET     @param = 'test'

SELECT
	[_].[FirstName],
	[_].[PersonID] as [ID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[LastName] = @param

