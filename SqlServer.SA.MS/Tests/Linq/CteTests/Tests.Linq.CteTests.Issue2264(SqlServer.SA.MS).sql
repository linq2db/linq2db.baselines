-- SqlServer.SA.MS SqlServer.2019

WITH [CTE]
(
	[Level_1],
	[Id],
	[ParentId],
	[Label],
	[Id_1],
	[Label_1],
	[ParentId_1]
)
AS
(
	SELECT
		CAST(0 AS Int),
		[c_1].[Id],
		[c_1].[ParentId],
		[c_1].[Label],
		[c_1].[Id],
		[c_1].[Label],
		[c_1].[ParentId]
	FROM
		[TestFolder] [c_1]
	WHERE
		[c_1].[ParentId] IS NULL
	UNION ALL
	SELECT
		[r].[Level_1] + 1,
		[t1].[Id],
		[t1].[ParentId],
		[r].[Label] + N'/' + [t1].[Label],
		[t1].[Id],
		[t1].[Label],
		[t1].[ParentId]
	FROM
		[TestFolder] [t1]
			INNER JOIN [CTE] [r] ON [t1].[ParentId] = [r].[Id]
)
SELECT
	[t2].[Level_1],
	[t2].[Id],
	[t2].[ParentId],
	[t2].[Label],
	[t2].[Id_1],
	[t2].[Label_1],
	[t2].[ParentId_1]
FROM
	[CTE] [t2]

