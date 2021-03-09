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
			[Patient] [pat]
				INNER JOIN [Person] [a_Person] ON [pat].[PersonID] = [a_Person].[PersonID]
		WHERE
			[pat].[PersonID] = @id AND [Person].[PersonID] = [a_Person].[PersonID]
	)

