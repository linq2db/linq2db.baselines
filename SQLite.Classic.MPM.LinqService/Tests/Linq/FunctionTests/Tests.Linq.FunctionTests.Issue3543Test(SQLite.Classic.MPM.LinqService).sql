BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

SELECT
	Substr([tag].[Name], CharIndex('.', [tag].[Name]) + 1, ((CharIndex('.', [tag].[Name], 6) - 1) - (CharIndex('.', [tag].[Name]) - 1)) - 1)
FROM
	[TagsTable] [tag]

