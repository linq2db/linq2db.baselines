BeforeExecute
-- SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = -1

UPDATE
	[Person]
SET
	[LastName] = 'test'
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Person] [_]
				LEFT JOIN [Patient] [a_Patient] ON [_].[PersonID] = [a_Patient].[PersonID]
					LEFT JOIN [Person] [a_Person] ON [a_Patient].[PersonID] = [a_Person].[PersonID]
		WHERE
			[_].[PersonID] = @id AND [Person].[PersonID] = [_].[PersonID]
	)

