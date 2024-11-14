BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @idCopy Int -- Int32
SET     @idCopy = 16

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
-- SqlServer.2008.MS SqlServer.2008
DECLARE @idCopy Int -- Int32
SET     @idCopy = 26

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

