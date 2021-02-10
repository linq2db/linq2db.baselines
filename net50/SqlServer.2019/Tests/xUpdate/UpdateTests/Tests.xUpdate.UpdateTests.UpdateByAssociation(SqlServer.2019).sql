BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @id Int -- Int32
SET     @id = -1

UPDATE
	[a_Person]
SET
	[a_Person].[LastName] = N'test'
FROM
	[Person] [_]
		LEFT JOIN [Patient] [a_Patient]
			LEFT JOIN [Person] [a_Person] ON [a_Patient].[PersonID] = [a_Person].[PersonID]
		ON [_].[PersonID] = [a_Patient].[PersonID]
WHERE
	[_].[PersonID] = @id

