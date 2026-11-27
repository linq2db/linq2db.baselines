-- SQLite.Classic SQLite
SELECT
	[it].[Id],
	[it].[bId]
FROM
	[NestedAssocRoot] [it]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[NestedAssocMiddle] [d]
				LEFT JOIN [NestedAssocLeaf] [a_Table3] ON [d].[cId] = [a_Table3].[Id]
		WHERE
			[it].[bId] = [d].[Id] AND [a_Table3].[Prop] = 'aaa'
	) AND
	EXISTS(
		SELECT
			*
		FROM
			[NestedAssocMiddle] [a_Table2]
		WHERE
			[it].[bId] = [a_Table2].[Id]
	)

