-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[p].[Id],
	CASE
		WHEN [t1].[Children] IS NULL THEN ''
		ELSE [t1].[Children]
	END
FROM
	[ConcatParent] [p]
		OUTER APPLY (
			SELECT
				STRING_AGG(CASE
					WHEN [a_Children].[Value] IS NULL THEN ''
					ELSE [a_Children].[Value]
				END, '') WITHIN GROUP (ORDER BY [a_Children].[Id]) as [Children]
			FROM
				[ConcatChild] [a_Children]
			WHERE
				[p].[Id] = [a_Children].[ParentId]
		) [t1]
ORDER BY
	[p].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[ParentId],
	[d].[Value] as [Value_1]
FROM
	[ConcatParent] [m_1]
		INNER JOIN [ConcatChild] [d] ON ([m_1].[Id] = [d].[ParentId])

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[ConcatParent] [t1]

