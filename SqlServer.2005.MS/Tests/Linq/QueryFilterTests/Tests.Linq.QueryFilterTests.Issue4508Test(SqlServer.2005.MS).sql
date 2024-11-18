BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @idCopy Int -- Int32
SET     @idCopy = 32

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
-- SqlServer.2005.MS SqlServer.2005
DECLARE @idCopy Int -- Int32
SET     @idCopy = 34

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

