--  SqlServer.2008

WITH [commentHierarchy] ([Id], [ParentId])
AS
(
	SELECT
		[t1].[Id],
		[t1].[ParentId]
	FROM
		[Parents] [t1]
	UNION ALL
	SELECT
		[t2].[Id],
		[t2].[ParentId]
	FROM
		[Parents] [t2]
			INNER JOIN [commentHierarchy] [c2] ON [t2].[Id] = [c2].[ParentId]
),
[commentHierarchy0] ([Id], [ParentId])
AS
(
	SELECT
		[t3].[Id],
		[t3].[ParentId]
	FROM
		[Parents] [t3]
	UNION ALL
	SELECT
		[t4].[Id],
		[t4].[ParentId]
	FROM
		[Parents] [t4]
			INNER JOIN [commentHierarchy0] [c2_1] ON [t4].[ParentId] = [c2_1].[Id]
)
SELECT
	[t5].[Id],
	[t5].[ParentId]
FROM
	[commentHierarchy] [t5]
UNION
SELECT
	[t6].[Id],
	[t6].[ParentId]
FROM
	[commentHierarchy0] [t6]



