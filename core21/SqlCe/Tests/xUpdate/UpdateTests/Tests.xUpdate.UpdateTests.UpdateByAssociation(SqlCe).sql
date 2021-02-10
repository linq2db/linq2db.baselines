BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = -1

UPDATE
	[Person]
SET
	[Person].[LastName] = 'test'
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Person] [_]
				LEFT JOIN [Patient] [a_Patient]
					LEFT JOIN [Person] [a_Person] ON [a_Patient].[PersonID] = [a_Person].[PersonID]
				ON [_].[PersonID] = [a_Patient].[PersonID]
		WHERE
			[_].[PersonID] = @id AND [Person].[PersonID] = [_].[PersonID]
	)

