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
	[Patient] [pat]
WHERE
	[pat].[PersonID] = @id AND [pat].[PersonID] = [a_Person].[PersonID]

