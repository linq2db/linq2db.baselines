BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @idCopy Int -- Int32
SET     @idCopy = 6

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
-- SqlServer.2014.MS SqlServer.2014
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

