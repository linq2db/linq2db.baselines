BeforeExecute
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = -1

UPDATE
	[Person]
SET
	[a_Person].[LastName] = 'test'
FROM
	[Person] [a_Person],
	[Person] [_]
		LEFT JOIN [Patient] [a_Patient] ON [_].[PersonID] = [a_Patient].[PersonID]
WHERE
	[_].[PersonID] = @id AND [a_Patient].[PersonID] = [a_Person].[PersonID]

