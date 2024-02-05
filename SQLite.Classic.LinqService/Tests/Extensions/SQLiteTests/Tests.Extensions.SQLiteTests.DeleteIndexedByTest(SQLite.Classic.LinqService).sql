BeforeExecute
-- SQLite.Classic SQLite

DELETE FROM
	[Person] INDEXED BY IX_PersonDesc
WHERE
	[Person].[PersonID] > 1000000

