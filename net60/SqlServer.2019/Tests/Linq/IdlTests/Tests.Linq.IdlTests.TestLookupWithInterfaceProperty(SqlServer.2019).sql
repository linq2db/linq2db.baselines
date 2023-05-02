BeforeExecute
-- SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP (@take)
	[obj].[FirstName],
	[obj].[LastName],
	[obj].[MiddleName],
	[obj].[Gender],
	[obj].[PersonID]
FROM
	[Person] [obj]
WHERE
	[obj].[PersonID] = @id

