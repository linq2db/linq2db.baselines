BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @idCopy Int -- Int32
SET     @idCopy = 36

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
-- SqlServer.Contained SqlServer.2019
DECLARE @idCopy Int -- Int32
SET     @idCopy = 38

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

