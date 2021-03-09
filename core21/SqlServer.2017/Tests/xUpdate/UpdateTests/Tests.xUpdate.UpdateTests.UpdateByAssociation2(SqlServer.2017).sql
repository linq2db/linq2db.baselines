BeforeExecute
-- SqlServer.2017
DECLARE @id Int -- Int32
SET     @id = -1

UPDATE
	[a_Person]
SET
	[a_Person].[LastName] = N'test'
FROM
	[Patient] [pat]
		INNER JOIN [Person] [a_Person] ON [pat].[PersonID] = [a_Person].[PersonID]
WHERE
	[pat].[PersonID] = @id

