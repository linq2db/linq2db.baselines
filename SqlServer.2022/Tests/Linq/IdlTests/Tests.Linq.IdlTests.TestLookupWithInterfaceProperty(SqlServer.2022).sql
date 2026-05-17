-- SqlServer.2022
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP (2)
	[obj].[PersonID],
	[obj].[FirstName],
	[obj].[LastName],
	[obj].[MiddleName],
	[obj].[Gender]
FROM
	[Person] [obj]
WHERE
	[obj].[PersonID] = @id

