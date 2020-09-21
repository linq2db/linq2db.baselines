BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP (@take)
	[obj].[PersonID],
	[obj].[FirstName],
	[obj].[LastName],
	[obj].[MiddleName],
	[obj].[Gender]
FROM
	[Person] [obj]
WHERE
	[obj].[PersonID] = @id

