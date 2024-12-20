BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @personId Int -- Int32
SET     @personId = 1

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender],
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @personId AND [p].[PersonID] = @personId AND
	[p].[PersonID] = @personId

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @personId Int -- Int32
SET     @personId = 2
DECLARE @personId_1 Int -- Int32
SET     @personId_1 = 1

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender],
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @personId AND [p].[PersonID] = @personId_1 AND
	[p].[PersonID] = @personId_1

