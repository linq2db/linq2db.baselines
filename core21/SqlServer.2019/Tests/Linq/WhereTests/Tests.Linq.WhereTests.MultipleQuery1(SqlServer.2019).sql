﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @id Int -- Int32
SET     @id = 1

SELECT 
	[p].[FirstName], 
	[p].[PersonID], 
	[p].[LastName], 
	[p].[MiddleName], 
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @id

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @id Int -- Int32
SET     @id = 2

SELECT 
	[p].[FirstName], 
	[p].[PersonID], 
	[p].[LastName], 
	[p].[MiddleName], 
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @id

