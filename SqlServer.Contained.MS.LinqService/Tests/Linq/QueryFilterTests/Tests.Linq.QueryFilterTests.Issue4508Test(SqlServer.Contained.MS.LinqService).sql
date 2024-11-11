BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @idCopy Int -- Int32
SET     @idCopy = 152

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
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @idCopy Int -- Int32
SET     @idCopy = 178

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

