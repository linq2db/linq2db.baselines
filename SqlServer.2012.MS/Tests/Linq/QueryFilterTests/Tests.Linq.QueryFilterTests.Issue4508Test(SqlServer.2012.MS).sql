BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @idCopy Int -- Int32
SET     @idCopy = 12

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] > @idCopy

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @idCopy Int -- Int32
SET     @idCopy = 14

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] > @idCopy

