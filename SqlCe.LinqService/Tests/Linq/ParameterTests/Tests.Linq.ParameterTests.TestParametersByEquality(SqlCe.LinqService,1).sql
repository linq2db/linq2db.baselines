﻿BeforeExecute
-- SqlCe
DECLARE @personId Int -- Int32
SET     @personId = 1
DECLARE @personId_1 Int -- Int32
SET     @personId_1 = 1

SELECT
	[p].[FirstName],
	[p].[PersonID] as [ID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender],
	[p].[FirstName] as [FirstName_1],
	[p].[PersonID] as [ID_1],
	[p].[LastName] as [LastName_1],
	[p].[MiddleName] as [MiddleName_1],
	[p].[Gender] as [Gender_1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @personId AND [p].[PersonID] = @personId AND
	[p].[PersonID] = @personId_1

BeforeExecute
-- SqlCe
DECLARE @personId Int -- Int32
SET     @personId = 1
DECLARE @personId_1 Int -- Int32
SET     @personId_1 = 2

SELECT
	[p].[FirstName],
	[p].[PersonID] as [ID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender],
	[p].[FirstName] as [FirstName_1],
	[p].[PersonID] as [ID_1],
	[p].[LastName] as [LastName_1],
	[p].[MiddleName] as [MiddleName_1],
	[p].[Gender] as [Gender_1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @personId AND [p].[PersonID] = @personId AND
	[p].[PersonID] = @personId_1

