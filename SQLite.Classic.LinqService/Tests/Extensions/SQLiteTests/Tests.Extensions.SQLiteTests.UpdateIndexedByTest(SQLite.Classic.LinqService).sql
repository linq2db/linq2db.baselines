BeforeExecute
-- SQLite.Classic SQLite

UPDATE
	[Person] INDEXED BY IX_PersonDesc
SET
	[FirstName] = ''
WHERE
	[Person].[PersonID] > 1000000

