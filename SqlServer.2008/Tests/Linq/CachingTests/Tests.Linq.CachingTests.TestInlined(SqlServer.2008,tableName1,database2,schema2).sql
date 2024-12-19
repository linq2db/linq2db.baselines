SELECT
	[cc].[ParentID],
	[cc].[ChildID],
	[c2].[ParentID],
	[c2].[ChildID]
FROM
	[Child] [c_1]
		CROSS JOIN [database2].[schema2].[tableName1] [cc]
		CROSS JOIN [database2].[schema2].[tableName1] [c2]

