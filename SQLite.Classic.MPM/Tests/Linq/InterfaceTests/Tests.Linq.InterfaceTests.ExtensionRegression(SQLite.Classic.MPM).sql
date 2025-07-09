BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT DISTINCT
	[a_Child].[ID]
FROM
	[ExtensionTable1] [r]
		INNER JOIN [ExtensionTable2] [a_Child] ON [r].[FK] = [a_Child].[ID]

