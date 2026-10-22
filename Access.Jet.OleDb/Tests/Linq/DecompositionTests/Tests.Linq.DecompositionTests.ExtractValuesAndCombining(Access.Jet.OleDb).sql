-- Access.Jet.OleDb AccessOleDb
SELECT
	[x].[c1],
	[x].[Kind],
	[x].[ItemCode],
	[x].[Color],
	[x].[ItemCode_1],
	[x].[Style_1]
FROM
	(
		SELECT
			[i].[Kind] = 1 OR [i].[Kind] = 2 as [c1],
			[i].[Kind] = 1 as [c2],
			Mid([i].[ItemCode], 1, 2) as [ItemCode],
			[i].[Color],
			[i].[Kind],
			Mid([i].[ItemCode], 3, 2) as [ItemCode_1],
			[i].[Style] as [Style_1]
		FROM
			[Item] [i]
		WHERE
			[i].[Kind] = 1 OR [i].[Kind] = 2
	) [x]
WHERE
	NOT ([x].[c1] AND [x].[c2] OR NOT [x].[c1])

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
	[x].[c1],
	[x].[ItemCode],
	[x].[Color],
	[x].[Kind],
	[x].[ItemCode_1],
	[x].[Style_1]
FROM
	(
		SELECT
			[i].[Kind] = 1 OR [i].[Kind] = 3 as [c1],
			Mid([i].[ItemCode], 5, 2) as [ItemCode],
			[i].[Color],
			[i].[Kind],
			Mid([i].[ItemCode], 7, 2) as [ItemCode_1],
			[i].[Style] as [Style_1]
		FROM
			[Item] [i]
		WHERE
			[i].[Kind] = 1 OR [i].[Kind] = 3
	) [x]
WHERE
	[x].[c1]

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
	[t1].[c1],
	[t1].[c2],
	[t1].[ItemCode],
	[t1].[Name],
	IIF(False, '', NULL),
	IIF(False, '', NULL),
	[t1].[ItemCode_1],
	[t1].[Name_1],
	IIF(False, False, NULL),
	IIF(False, '', NULL),
	IIF(False, '', NULL)
FROM
	(
		SELECT
			[t].[Kind] = 1 OR [t].[Kind] = 2 as [c1],
			Mid([t].[ItemCode], 1, 2) as [ItemCode],
			[t].[Color] as [Name],
			Mid([t].[ItemCode], 3, 2) as [ItemCode_1],
			[t].[Style] as [Name_1],
			[t].[Kind] = 1 as [c2]
		FROM
			[Item] [t]
	) [t1]
WHERE
	[t1].[c1]
UNION ALL
SELECT
	[t2].[c1],
	IIF(False, False, NULL),
	IIF(False, '', NULL),
	IIF(False, '', NULL),
	[t2].[ItemCode],
	[t2].[Color],
	IIF(False, '', NULL),
	IIF(False, '', NULL),
	[t2].[c2],
	[t2].[ItemCode_1],
	[t2].[Style_1]
FROM
	(
		SELECT
			[t_1].[Kind] = 1 OR [t_1].[Kind] = 3 as [c1],
			Mid([t_1].[ItemCode], 5, 2) as [ItemCode],
			[t_1].[Color],
			Mid([t_1].[ItemCode], 7, 2) as [ItemCode_1],
			[t_1].[Style] as [Style_1],
			[t_1].[Kind] = 1 as [c2]
		FROM
			[Item] [t_1]
	) [t2]
WHERE
	[t2].[c1]

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
	[x_1].[c1],
	[x_1].[c2],
	[x_1].[ItemCode],
	[x_1].[Name],
	[x_1].[ItemCode_2],
	[x_1].[Name_2],
	[x_1].[ItemCode_1],
	[x_1].[Name_1],
	[x_1].[c3],
	[x_1].[ItemCode_3],
	[x_1].[Name_3]
FROM
	(
		SELECT
			[x].[c1],
			[x].[c2],
			[x].[ItemCode],
			[x].[Color] as [Name],
			[x].[ItemCode_1],
			[x].[Style_1] as [Name_1],
			IIF(False, '', NULL) as [ItemCode_2],
			IIF(False, '', NULL) as [Name_2],
			IIF(False, False, NULL) as [c3],
			IIF(False, '', NULL) as [ItemCode_3],
			IIF(False, '', NULL) as [Name_3]
		FROM
			(
				SELECT
					[t].[Kind] = 1 OR [t].[Kind] = 2 as [c1],
					Mid([t].[ItemCode], 1, 2) as [ItemCode],
					[t].[Color],
					Mid([t].[ItemCode], 3, 2) as [ItemCode_1],
					[t].[Style] as [Style_1],
					[t].[Kind] = 1 as [c2]
				FROM
					[Item] [t]
			) [x]
		WHERE
			[x].[c1]
		UNION ALL
		SELECT
			[t1].[c1],
			IIF(False, False, NULL) as [c2],
			IIF(False, '', NULL) as [ItemCode],
			IIF(False, '', NULL) as [Name],
			IIF(False, '', NULL) as [ItemCode_1],
			IIF(False, '', NULL) as [Name_1],
			[t1].[ItemCode] as [ItemCode_2],
			[t1].[Color] as [Name_2],
			[t1].[c2] as [c3],
			[t1].[ItemCode_1] as [ItemCode_3],
			[t1].[Style_1] as [Name_3]
		FROM
			(
				SELECT
					[t_1].[Kind] = 1 OR [t_1].[Kind] = 3 as [c1],
					Mid([t_1].[ItemCode], 5, 2) as [ItemCode],
					[t_1].[Color],
					Mid([t_1].[ItemCode], 7, 2) as [ItemCode_1],
					[t_1].[Style] as [Style_1],
					[t_1].[Kind] = 1 as [c2]
				FROM
					[Item] [t_1]
			) [t1]
		WHERE
			[t1].[c1]
	) [x_1]
WHERE
	NOT ([x_1].[c1] AND [x_1].[c2] IS NOT NULL AND [x_1].[c2] OR NOT [x_1].[c1])

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
	[x_1].[c1],
	[x_1].[c2],
	[x_1].[ItemCode],
	[x_1].[Name],
	[x_1].[ItemCode_2],
	[x_1].[Name_2],
	[x_1].[ItemCode_1],
	[x_1].[Name_1],
	[x_1].[c3],
	[x_1].[ItemCode_3],
	[x_1].[Name_3]
FROM
	(
		SELECT
			[x].[c1],
			[x].[c2],
			[x].[ItemCode],
			[x].[Color] as [Name],
			[x].[ItemCode_1],
			[x].[Style_1] as [Name_1],
			IIF(False, '', NULL) as [ItemCode_2],
			IIF(False, '', NULL) as [Name_2],
			IIF(False, False, NULL) as [c3],
			IIF(False, '', NULL) as [ItemCode_3],
			IIF(False, '', NULL) as [Name_3]
		FROM
			(
				SELECT
					[t].[Kind] = 1 OR [t].[Kind] = 2 as [c1],
					Mid([t].[ItemCode], 1, 2) as [ItemCode],
					[t].[Color],
					Mid([t].[ItemCode], 3, 2) as [ItemCode_1],
					[t].[Style] as [Style_1],
					[t].[Kind] = 1 as [c2]
				FROM
					[Item] [t]
			) [x]
		WHERE
			[x].[c1]
		UNION ALL
		SELECT
			[t1].[c1],
			IIF(False, False, NULL) as [c2],
			IIF(False, '', NULL) as [ItemCode],
			IIF(False, '', NULL) as [Name],
			IIF(False, '', NULL) as [ItemCode_1],
			IIF(False, '', NULL) as [Name_1],
			[t1].[ItemCode] as [ItemCode_2],
			[t1].[Color] as [Name_2],
			[t1].[c2] as [c3],
			[t1].[ItemCode_1] as [ItemCode_3],
			[t1].[Style_1] as [Name_3]
		FROM
			(
				SELECT
					[t_1].[Kind] = 1 OR [t_1].[Kind] = 3 as [c1],
					Mid([t_1].[ItemCode], 5, 2) as [ItemCode],
					[t_1].[Color],
					Mid([t_1].[ItemCode], 7, 2) as [ItemCode_1],
					[t_1].[Style] as [Style_1],
					[t_1].[Kind] = 1 as [c2]
				FROM
					[Item] [t_1]
			) [t1]
		WHERE
			[t1].[c1]
	) [x_1]
WHERE
	[x_1].[c1] AND [x_1].[c2] IS NOT NULL AND [x_1].[c2] OR
	NOT [x_1].[c1]

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
	[x_1].[c1],
	[x_1].[c2],
	[x_1].[ItemCode],
	[x_1].[Name],
	[x_1].[ItemCode_2],
	[x_1].[Name_2],
	[x_1].[ItemCode_1],
	[x_1].[Name_1],
	[x_1].[c3],
	[x_1].[ItemCode_3],
	[x_1].[Name_3]
FROM
	(
		SELECT
			[x].[c1],
			[x].[c2],
			[x].[ItemCode],
			[x].[Color] as [Name],
			[x].[ItemCode_1],
			[x].[Style_1] as [Name_1],
			IIF(False, '', NULL) as [ItemCode_2],
			IIF(False, '', NULL) as [Name_2],
			IIF(False, False, NULL) as [c3],
			IIF(False, '', NULL) as [ItemCode_3],
			IIF(False, '', NULL) as [Name_3]
		FROM
			(
				SELECT
					[t].[Kind] = 1 OR [t].[Kind] = 2 as [c1],
					Mid([t].[ItemCode], 1, 2) as [ItemCode],
					[t].[Color],
					Mid([t].[ItemCode], 3, 2) as [ItemCode_1],
					[t].[Style] as [Style_1],
					[t].[Kind] = 1 as [c2]
				FROM
					[Item] [t]
			) [x]
		WHERE
			[x].[c1]
		UNION ALL
		SELECT
			[t1].[c1],
			IIF(False, False, NULL) as [c2],
			IIF(False, '', NULL) as [ItemCode],
			IIF(False, '', NULL) as [Name],
			IIF(False, '', NULL) as [ItemCode_1],
			IIF(False, '', NULL) as [Name_1],
			[t1].[ItemCode] as [ItemCode_2],
			[t1].[Color] as [Name_2],
			[t1].[c2] as [c3],
			[t1].[ItemCode_1] as [ItemCode_3],
			[t1].[Style_1] as [Name_3]
		FROM
			(
				SELECT
					[t_1].[Kind] = 1 OR [t_1].[Kind] = 3 as [c1],
					Mid([t_1].[ItemCode], 5, 2) as [ItemCode],
					[t_1].[Color],
					Mid([t_1].[ItemCode], 7, 2) as [ItemCode_1],
					[t_1].[Style] as [Style_1],
					[t_1].[Kind] = 1 as [c2]
				FROM
					[Item] [t_1]
			) [t1]
		WHERE
			[t1].[c1]
	) [x_1]
WHERE
	NOT ([x_1].[c1] AND [x_1].[c2] IS NULL AND [x_1].[c3] OR NOT [x_1].[c1])

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
	[x_1].[c1],
	[x_1].[c2],
	[x_1].[ItemCode],
	[x_1].[Name],
	[x_1].[ItemCode_2],
	[x_1].[Name_2],
	[x_1].[ItemCode_1],
	[x_1].[Name_1],
	[x_1].[c3],
	[x_1].[ItemCode_3],
	[x_1].[Name_3]
FROM
	(
		SELECT
			[x].[c1],
			[x].[c2],
			[x].[ItemCode],
			[x].[Color] as [Name],
			[x].[ItemCode_1],
			[x].[Style_1] as [Name_1],
			IIF(False, '', NULL) as [ItemCode_2],
			IIF(False, '', NULL) as [Name_2],
			IIF(False, False, NULL) as [c3],
			IIF(False, '', NULL) as [ItemCode_3],
			IIF(False, '', NULL) as [Name_3]
		FROM
			(
				SELECT
					[t].[Kind] = 1 OR [t].[Kind] = 2 as [c1],
					Mid([t].[ItemCode], 1, 2) as [ItemCode],
					[t].[Color],
					Mid([t].[ItemCode], 3, 2) as [ItemCode_1],
					[t].[Style] as [Style_1],
					[t].[Kind] = 1 as [c2]
				FROM
					[Item] [t]
			) [x]
		WHERE
			[x].[c1]
		UNION ALL
		SELECT
			[t1].[c1],
			IIF(False, False, NULL) as [c2],
			IIF(False, '', NULL) as [ItemCode],
			IIF(False, '', NULL) as [Name],
			IIF(False, '', NULL) as [ItemCode_1],
			IIF(False, '', NULL) as [Name_1],
			[t1].[ItemCode] as [ItemCode_2],
			[t1].[Color] as [Name_2],
			[t1].[c2] as [c3],
			[t1].[ItemCode_1] as [ItemCode_3],
			[t1].[Style_1] as [Name_3]
		FROM
			(
				SELECT
					[t_1].[Kind] = 1 OR [t_1].[Kind] = 3 as [c1],
					Mid([t_1].[ItemCode], 5, 2) as [ItemCode],
					[t_1].[Color],
					Mid([t_1].[ItemCode], 7, 2) as [ItemCode_1],
					[t_1].[Style] as [Style_1],
					[t_1].[Kind] = 1 as [c2]
				FROM
					[Item] [t_1]
			) [t1]
		WHERE
			[t1].[c1]
	) [x_1]
WHERE
	[x_1].[c1] AND [x_1].[c2] IS NULL AND [x_1].[c3] OR
	NOT [x_1].[c1]

-- Access.Jet.OleDb AccessOleDb
SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

