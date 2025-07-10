BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[it].[Id],
	[it].[bId]
FROM
	[Table860_1] [it]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Table860_2] [d]
				LEFT JOIN [Table860_3] [a_Table3] ON [d].[cId] = [a_Table3].[Id]
		WHERE
			[it].[bId] = [d].[Id] AND [a_Table3].[Prop] = 'aaa'
	) AND
	EXISTS(
		SELECT
			*
		FROM
			[Table860_2] [a_Table2]
		WHERE
			[it].[bId] = [a_Table2].[Id]
	)

