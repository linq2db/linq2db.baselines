-- Access.Ace.OleDb AccessOleDb

SELECT
	[x].[Color],
	[x].[Kind],
	[x].[ItemCode],
	[x].[Color_2],
	[x].[ItemCode_1],
	[x].[Style_1]
FROM
	(
		SELECT
			[i].[Kind] = 1 OR [i].[Kind] = 2 as [Color],
			[i].[Kind] = 1 as [Color_1],
			Mid([i].[ItemCode], 1, 2) as [ItemCode],
			[i].[Color] as [Color_2],
			[i].[Kind],
			Mid([i].[ItemCode], 3, 2) as [ItemCode_1],
			[i].[Style] as [Style_1]
		FROM
			[Item] [i]
		WHERE
			[i].[Kind] = 1 OR [i].[Kind] = 2
	) [x]
WHERE
	NOT ([x].[Color] AND [x].[Color_1] OR NOT [x].[Color])

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[x].[Color],
	[x].[ItemCode],
	[x].[Color_1],
	[x].[Kind],
	[x].[ItemCode_1],
	[x].[Style_1]
FROM
	(
		SELECT
			[i].[Kind] = 1 OR [i].[Kind] = 3 as [Color],
			Mid([i].[ItemCode], 5, 2) as [ItemCode],
			[i].[Color] as [Color_1],
			[i].[Kind],
			Mid([i].[ItemCode], 7, 2) as [ItemCode_1],
			[i].[Style] as [Style_1]
		FROM
			[Item] [i]
		WHERE
			[i].[Kind] = 1 OR [i].[Kind] = 3
	) [x]
WHERE
	[x].[Color]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[Top],
	[t1].[Color],
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
			[t].[Kind] = 1 OR [t].[Kind] = 2 as [Top],
			Mid([t].[ItemCode], 1, 2) as [ItemCode],
			[t].[Color] as [Name],
			Mid([t].[ItemCode], 3, 2) as [ItemCode_1],
			[t].[Style] as [Name_1],
			[t].[Kind] = 1 as [Color]
		FROM
			[Item] [t]
	) [t1]
WHERE
	[t1].[Top]
UNION ALL
SELECT
	[t2].[Bottom],
	IIF(False, False, NULL),
	IIF(False, '', NULL),
	IIF(False, '', NULL),
	[t2].[ItemCode],
	[t2].[Color],
	IIF(False, '', NULL),
	IIF(False, '', NULL),
	[t2].[Size_1],
	[t2].[ItemCode_1],
	[t2].[Style_1]
FROM
	(
		SELECT
			[t_1].[Kind] = 1 OR [t_1].[Kind] = 3 as [Bottom],
			Mid([t_1].[ItemCode], 5, 2) as [ItemCode],
			[t_1].[Color],
			Mid([t_1].[ItemCode], 7, 2) as [ItemCode_1],
			[t_1].[Style] as [Style_1],
			[t_1].[Kind] = 1 as [Size_1]
		FROM
			[Item] [t_1]
	) [t2]
WHERE
	[t2].[Bottom]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[x_1].[Color],
	[x_1].[Color_1],
	[x_1].[ItemCode],
	[x_1].[Name],
	[x_1].[ItemCode_2],
	[x_1].[Name_2],
	[x_1].[ItemCode_1],
	[x_1].[Name_1],
	[x_1].[Size_1],
	[x_1].[ItemCode_3],
	[x_1].[Name_3]
FROM
	(
		SELECT
			[x].[Top] as [Color],
			[x].[Color_1],
			[x].[ItemCode],
			[x].[Color] as [Name],
			[x].[ItemCode_1],
			[x].[Style_1] as [Name_1],
			IIF(False, '', NULL) as [ItemCode_2],
			IIF(False, '', NULL) as [Name_2],
			IIF(False, False, NULL) as [Size_1],
			IIF(False, '', NULL) as [ItemCode_3],
			IIF(False, '', NULL) as [Name_3]
		FROM
			(
				SELECT
					[t].[Kind] = 1 OR [t].[Kind] = 2 as [Top],
					Mid([t].[ItemCode], 1, 2) as [ItemCode],
					[t].[Color],
					Mid([t].[ItemCode], 3, 2) as [ItemCode_1],
					[t].[Style] as [Style_1],
					[t].[Kind] = 1 as [Color_1]
				FROM
					[Item] [t]
			) [x]
		WHERE
			[x].[Top]
		UNION ALL
		SELECT
			[t1].[Bottom] as [Color],
			IIF(False, False, NULL) as [Color_1],
			IIF(False, '', NULL) as [ItemCode],
			IIF(False, '', NULL) as [Name],
			IIF(False, '', NULL) as [ItemCode_1],
			IIF(False, '', NULL) as [Name_1],
			[t1].[ItemCode] as [ItemCode_2],
			[t1].[Color] as [Name_2],
			[t1].[Size_1],
			[t1].[ItemCode_1] as [ItemCode_3],
			[t1].[Style_1] as [Name_3]
		FROM
			(
				SELECT
					[t_1].[Kind] = 1 OR [t_1].[Kind] = 3 as [Bottom],
					Mid([t_1].[ItemCode], 5, 2) as [ItemCode],
					[t_1].[Color],
					Mid([t_1].[ItemCode], 7, 2) as [ItemCode_1],
					[t_1].[Style] as [Style_1],
					[t_1].[Kind] = 1 as [Size_1]
				FROM
					[Item] [t_1]
			) [t1]
		WHERE
			[t1].[Bottom]
	) [x_1]
WHERE
	NOT ([x_1].[Color] AND [x_1].[Color_1] IS NOT NULL AND [x_1].[Color_1] OR NOT [x_1].[Color])

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[x_1].[Color],
	[x_1].[Color_1],
	[x_1].[ItemCode],
	[x_1].[Name],
	[x_1].[ItemCode_2],
	[x_1].[Name_2],
	[x_1].[ItemCode_1],
	[x_1].[Name_1],
	[x_1].[Size_1],
	[x_1].[ItemCode_3],
	[x_1].[Name_3]
FROM
	(
		SELECT
			[x].[Top] as [Color],
			[x].[Color_1],
			[x].[ItemCode],
			[x].[Color] as [Name],
			[x].[ItemCode_1],
			[x].[Style_1] as [Name_1],
			IIF(False, '', NULL) as [ItemCode_2],
			IIF(False, '', NULL) as [Name_2],
			IIF(False, False, NULL) as [Size_1],
			IIF(False, '', NULL) as [ItemCode_3],
			IIF(False, '', NULL) as [Name_3]
		FROM
			(
				SELECT
					[t].[Kind] = 1 OR [t].[Kind] = 2 as [Top],
					Mid([t].[ItemCode], 1, 2) as [ItemCode],
					[t].[Color],
					Mid([t].[ItemCode], 3, 2) as [ItemCode_1],
					[t].[Style] as [Style_1],
					[t].[Kind] = 1 as [Color_1]
				FROM
					[Item] [t]
			) [x]
		WHERE
			[x].[Top]
		UNION ALL
		SELECT
			[t1].[Bottom] as [Color],
			IIF(False, False, NULL) as [Color_1],
			IIF(False, '', NULL) as [ItemCode],
			IIF(False, '', NULL) as [Name],
			IIF(False, '', NULL) as [ItemCode_1],
			IIF(False, '', NULL) as [Name_1],
			[t1].[ItemCode] as [ItemCode_2],
			[t1].[Color] as [Name_2],
			[t1].[Size_1],
			[t1].[ItemCode_1] as [ItemCode_3],
			[t1].[Style_1] as [Name_3]
		FROM
			(
				SELECT
					[t_1].[Kind] = 1 OR [t_1].[Kind] = 3 as [Bottom],
					Mid([t_1].[ItemCode], 5, 2) as [ItemCode],
					[t_1].[Color],
					Mid([t_1].[ItemCode], 7, 2) as [ItemCode_1],
					[t_1].[Style] as [Style_1],
					[t_1].[Kind] = 1 as [Size_1]
				FROM
					[Item] [t_1]
			) [t1]
		WHERE
			[t1].[Bottom]
	) [x_1]
WHERE
	[x_1].[Color] AND [x_1].[Color_1] IS NOT NULL AND [x_1].[Color_1] OR
	NOT [x_1].[Color]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[x_1].[Size_1],
	[x_1].[Color],
	[x_1].[ItemCode],
	[x_1].[Name],
	[x_1].[ItemCode_2],
	[x_1].[Name_2],
	[x_1].[ItemCode_1],
	[x_1].[Name_1],
	[x_1].[Size_2],
	[x_1].[ItemCode_3],
	[x_1].[Name_3]
FROM
	(
		SELECT
			[x].[Top] as [Size_1],
			[x].[Color_1] as [Color],
			[x].[ItemCode],
			[x].[Color] as [Name],
			[x].[ItemCode_1],
			[x].[Style_1] as [Name_1],
			IIF(False, '', NULL) as [ItemCode_2],
			IIF(False, '', NULL) as [Name_2],
			IIF(False, False, NULL) as [Size_2],
			IIF(False, '', NULL) as [ItemCode_3],
			IIF(False, '', NULL) as [Name_3]
		FROM
			(
				SELECT
					[t].[Kind] = 1 OR [t].[Kind] = 2 as [Top],
					Mid([t].[ItemCode], 1, 2) as [ItemCode],
					[t].[Color],
					Mid([t].[ItemCode], 3, 2) as [ItemCode_1],
					[t].[Style] as [Style_1],
					[t].[Kind] = 1 as [Color_1]
				FROM
					[Item] [t]
			) [x]
		WHERE
			[x].[Top]
		UNION ALL
		SELECT
			[t1].[Bottom] as [Size_1],
			IIF(False, False, NULL) as [Color],
			IIF(False, '', NULL) as [ItemCode],
			IIF(False, '', NULL) as [Name],
			IIF(False, '', NULL) as [ItemCode_1],
			IIF(False, '', NULL) as [Name_1],
			[t1].[ItemCode] as [ItemCode_2],
			[t1].[Color] as [Name_2],
			[t1].[Size_1] as [Size_2],
			[t1].[ItemCode_1] as [ItemCode_3],
			[t1].[Style_1] as [Name_3]
		FROM
			(
				SELECT
					[t_1].[Kind] = 1 OR [t_1].[Kind] = 3 as [Bottom],
					Mid([t_1].[ItemCode], 5, 2) as [ItemCode],
					[t_1].[Color],
					Mid([t_1].[ItemCode], 7, 2) as [ItemCode_1],
					[t_1].[Style] as [Style_1],
					[t_1].[Kind] = 1 as [Size_1]
				FROM
					[Item] [t_1]
			) [t1]
		WHERE
			[t1].[Bottom]
	) [x_1]
WHERE
	NOT ([x_1].[Size_1] AND [x_1].[Color] IS NULL AND [x_1].[Size_2] OR NOT [x_1].[Size_1])

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[x_1].[Size_1],
	[x_1].[Color],
	[x_1].[ItemCode],
	[x_1].[Name],
	[x_1].[ItemCode_2],
	[x_1].[Name_2],
	[x_1].[ItemCode_1],
	[x_1].[Name_1],
	[x_1].[Size_2],
	[x_1].[ItemCode_3],
	[x_1].[Name_3]
FROM
	(
		SELECT
			[x].[Top] as [Size_1],
			[x].[Color_1] as [Color],
			[x].[ItemCode],
			[x].[Color] as [Name],
			[x].[ItemCode_1],
			[x].[Style_1] as [Name_1],
			IIF(False, '', NULL) as [ItemCode_2],
			IIF(False, '', NULL) as [Name_2],
			IIF(False, False, NULL) as [Size_2],
			IIF(False, '', NULL) as [ItemCode_3],
			IIF(False, '', NULL) as [Name_3]
		FROM
			(
				SELECT
					[t].[Kind] = 1 OR [t].[Kind] = 2 as [Top],
					Mid([t].[ItemCode], 1, 2) as [ItemCode],
					[t].[Color],
					Mid([t].[ItemCode], 3, 2) as [ItemCode_1],
					[t].[Style] as [Style_1],
					[t].[Kind] = 1 as [Color_1]
				FROM
					[Item] [t]
			) [x]
		WHERE
			[x].[Top]
		UNION ALL
		SELECT
			[t1].[Bottom] as [Size_1],
			IIF(False, False, NULL) as [Color],
			IIF(False, '', NULL) as [ItemCode],
			IIF(False, '', NULL) as [Name],
			IIF(False, '', NULL) as [ItemCode_1],
			IIF(False, '', NULL) as [Name_1],
			[t1].[ItemCode] as [ItemCode_2],
			[t1].[Color] as [Name_2],
			[t1].[Size_1] as [Size_2],
			[t1].[ItemCode_1] as [ItemCode_3],
			[t1].[Style_1] as [Name_3]
		FROM
			(
				SELECT
					[t_1].[Kind] = 1 OR [t_1].[Kind] = 3 as [Bottom],
					Mid([t_1].[ItemCode], 5, 2) as [ItemCode],
					[t_1].[Color],
					Mid([t_1].[ItemCode], 7, 2) as [ItemCode_1],
					[t_1].[Style] as [Style_1],
					[t_1].[Kind] = 1 as [Size_1]
				FROM
					[Item] [t_1]
			) [t1]
		WHERE
			[t1].[Bottom]
	) [x_1]
WHERE
	[x_1].[Size_1] AND [x_1].[Color] IS NULL AND [x_1].[Size_2] OR
	NOT [x_1].[Size_1]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ItemId],
	[t1].[Kind],
	[t1].[ItemCode],
	[t1].[Style],
	[t1].[Color]
FROM
	[Item] [t1]

