BeforeExecute
-- SQLite.MS SQLite

WITH [previous]
(
	[OrgGroup_Id],
	[OrgGroup_ParentId],
	[OrgGroup_GroupName],
	[Depth_1]
)
AS
(
	SELECT
		[parent].[Id],
		[parent].[ParentId],
		[parent].[GroupName],
		CAST(0 AS INTEGER)
	FROM
		[OrgGroup] [parent]
	UNION
	SELECT
		[child].[Id],
		[child].[ParentId],
		[child].[GroupName],
		[parent_1].[Depth_1] + 1
	FROM
		[OrgGroup] [child]
			INNER JOIN [previous] [parent_1] ON [parent_1].[OrgGroup_Id] = [child].[ParentId]
)
SELECT
	[wrapper].[OrgGroup_Id],
	[wrapper].[OrgGroup_ParentId],
	[wrapper].[OrgGroup_GroupName]
FROM
	[previous] [wrapper]

