-- Access.Jet.OleDb AccessOleDb
SELECT
	[t].[Kind] = 1 OR [t].[Kind] = 2,
	[t].[Kind],
	Mid([t].[ItemCode], 1, 2),
	[t].[Color],
	Mid([t].[ItemCode], 3, 2),
	[t].[Style],
	[t].[Kind] = 1 OR [t].[Kind] = 3,
	Mid([t].[ItemCode], 5, 2),
	Mid([t].[ItemCode], 7, 2)
FROM
	[Item] [t]

-- Access.Jet.OleDb AccessOleDb
SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

-- Access.Jet.OleDb AccessOleDb
SELECT
	[x_1].[c2],
	[x_1].[Kind],
	[x_1].[ItemCode],
	[x_1].[Color],
	[x_1].[ItemCode_2],
	[x_1].[Style_1],
	[x_1].[c4],
	[x_1].[ItemCode_1],
	[x_1].[ItemCode_3]
FROM
	(
		SELECT
			[x].[Kind] = 1 OR [x].[Kind] = 2 as [c1],
			[x].[Kind] = 1 OR [x].[Kind] = 2 as [c2],
			[x].[Kind] = 1 as [c3],
			Mid([x].[ItemCode], 1, 2) as [ItemCode],
			[x].[Color],
			[x].[Kind] = 1 OR [x].[Kind] = 3 as [c4],
			Mid([x].[ItemCode], 5, 2) as [ItemCode_1],
			[x].[Kind],
			Mid([x].[ItemCode], 3, 2) as [ItemCode_2],
			[x].[Style] as [Style_1],
			Mid([x].[ItemCode], 7, 2) as [ItemCode_3]
		FROM
			[Item] [x]
	) [x_1]
WHERE
	NOT ([x_1].[c1] AND ([x_1].[c2] AND [x_1].[c3] OR NOT [x_1].[c2]) OR NOT [x_1].[c1] AND NOT [x_1].[c4])

-- Access.Jet.OleDb AccessOleDb
SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

-- Access.Jet.OleDb AccessOleDb
SELECT
	[x_1].[c2],
	[x_1].[Kind],
	[x_1].[ItemCode],
	[x_1].[Color],
	[x_1].[ItemCode_2],
	[x_1].[Style_1],
	[x_1].[c4],
	[x_1].[ItemCode_1],
	[x_1].[ItemCode_3]
FROM
	(
		SELECT
			[x].[Kind] = 1 OR [x].[Kind] = 2 as [c1],
			[x].[Kind] = 1 OR [x].[Kind] = 2 as [c2],
			[x].[Kind] = 1 as [c3],
			Mid([x].[ItemCode], 1, 2) as [ItemCode],
			[x].[Color],
			[x].[Kind] = 1 OR [x].[Kind] = 3 as [c4],
			Mid([x].[ItemCode], 5, 2) as [ItemCode_1],
			[x].[Kind],
			Mid([x].[ItemCode], 3, 2) as [ItemCode_2],
			[x].[Style] as [Style_1],
			Mid([x].[ItemCode], 7, 2) as [ItemCode_3]
		FROM
			[Item] [x]
	) [x_1]
WHERE
	[x_1].[c1] AND ([x_1].[c2] AND [x_1].[c3] OR NOT [x_1].[c2]) OR
	NOT [x_1].[c1] AND NOT [x_1].[c4]

-- Access.Jet.OleDb AccessOleDb
SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

-- Access.Jet.OleDb AccessOleDb
SELECT
	[x_1].[c2],
	[x_1].[Kind],
	[x_1].[ItemCode_2],
	[x_1].[Color],
	[x_1].[ItemCode],
	[x_1].[Style_1],
	[x_1].[c3],
	[x_1].[ItemCode_3],
	[x_1].[ItemCode_1]
FROM
	(
		SELECT
			[x].[Kind] = 1 OR [x].[Kind] = 2 as [c1],
			[x].[Kind] = 1 OR [x].[Kind] = 2 as [c2],
			Mid([x].[ItemCode], 3, 2) as [ItemCode],
			[x].[Style] as [Style_1],
			[x].[Kind] = 1 OR [x].[Kind] = 3 as [c3],
			[x].[Kind] = 1 as [c4],
			Mid([x].[ItemCode], 7, 2) as [ItemCode_1],
			[x].[Kind],
			Mid([x].[ItemCode], 1, 2) as [ItemCode_2],
			[x].[Color],
			Mid([x].[ItemCode], 5, 2) as [ItemCode_3]
		FROM
			[Item] [x]
	) [x_1]
WHERE
	NOT (NOT [x_1].[c1] AND ([x_1].[c3] AND [x_1].[c4] OR NOT [x_1].[c3]))

-- Access.Jet.OleDb AccessOleDb
SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

-- Access.Jet.OleDb AccessOleDb
SELECT
	[x_1].[c2],
	[x_1].[Kind],
	[x_1].[ItemCode_2],
	[x_1].[Color],
	[x_1].[ItemCode],
	[x_1].[Style_1],
	[x_1].[c3],
	[x_1].[ItemCode_3],
	[x_1].[ItemCode_1]
FROM
	(
		SELECT
			[x].[Kind] = 1 OR [x].[Kind] = 2 as [c1],
			[x].[Kind] = 1 OR [x].[Kind] = 2 as [c2],
			Mid([x].[ItemCode], 3, 2) as [ItemCode],
			[x].[Style] as [Style_1],
			[x].[Kind] = 1 OR [x].[Kind] = 3 as [c3],
			[x].[Kind] = 1 as [c4],
			Mid([x].[ItemCode], 7, 2) as [ItemCode_1],
			[x].[Kind],
			Mid([x].[ItemCode], 1, 2) as [ItemCode_2],
			[x].[Color],
			Mid([x].[ItemCode], 5, 2) as [ItemCode_3]
		FROM
			[Item] [x]
	) [x_1]
WHERE
	NOT [x_1].[c1] AND ([x_1].[c3] AND [x_1].[c4] OR NOT [x_1].[c3])

-- Access.Jet.OleDb AccessOleDb
SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

