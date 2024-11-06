BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @idCopy Int -- Int32
SET     @idCopy = 110

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
SET     @idCopy = 132

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

