-- SqlServer.2012
WITH [cte] ([Id])
AS
(
	SELECT
		[a_Table2].[Id]
	FROM
		[CteSeedRow] [s]
			INNER JOIN [CteSeedParent] [a_Table2] ON [s].[FK] = [a_Table2].[Id]
	UNION ALL
	SELECT
		[r3].[Value]
	FROM
		[cte] [t1]
			INNER JOIN [CteRecursiveStep] [r3] ON [t1].[Id] = [r3].[Value2]
)
SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Value]
FROM
	(
		SELECT DISTINCT
			[t2].[Id]
		FROM
			[cte] [t2]
				INNER JOIN [CteOuterJoinedRow] [r3_1] ON [t2].[Id] = [r3_1].[Id]
		WHERE
			[r3_1].[Value] IS NOT NULL
	) [m_1]
		INNER JOIN [CteProjectedValueRow] [d] ON [d].[Value] = [m_1].[Id]

-- SqlServer.2012
WITH [cte] ([Id])
AS
(
	SELECT
		[a_Table2].[Id]
	FROM
		[CteSeedRow] [s]
			INNER JOIN [CteSeedParent] [a_Table2] ON [s].[FK] = [a_Table2].[Id]
	UNION ALL
	SELECT
		[r3].[Value]
	FROM
		[cte] [t1]
			INNER JOIN [CteRecursiveStep] [r3] ON [t1].[Id] = [r3].[Value2]
)
SELECT
	[t2].[Id]
FROM
	[cte] [t2]
		INNER JOIN [CteOuterJoinedRow] [r3_1] ON [t2].[Id] = [r3_1].[Id]
WHERE
	[r3_1].[Value] IS NOT NULL

