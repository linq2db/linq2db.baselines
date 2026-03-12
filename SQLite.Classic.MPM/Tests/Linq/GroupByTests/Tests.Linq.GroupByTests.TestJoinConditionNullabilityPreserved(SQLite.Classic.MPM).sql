-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[a_Ref].[Prop]
FROM
	[MainTable] [r]
		LEFT JOIN ([Ref1] [a_Ref_1]
			LEFT JOIN [Ref2] [a_Ref] ON [a_Ref_1].[Id] = [a_Ref].[FK])
		ON [r].[FK] = [a_Ref_1].[Id]
WHERE
	[r].[Id] = 1
LIMIT 2

