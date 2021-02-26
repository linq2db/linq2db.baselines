BeforeExecute
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = -1

UPDATE
	([Person] [_]
		LEFT JOIN [Patient] [a_Patient] ON ([_].[PersonID] = [a_Patient].[PersonID]))
		LEFT JOIN [Person] [a_Person] ON ([a_Patient].[PersonID] = [a_Person].[PersonID])
SET
	[_].[LastName] = 'test'
WHERE
	[_].[PersonID] = @id

