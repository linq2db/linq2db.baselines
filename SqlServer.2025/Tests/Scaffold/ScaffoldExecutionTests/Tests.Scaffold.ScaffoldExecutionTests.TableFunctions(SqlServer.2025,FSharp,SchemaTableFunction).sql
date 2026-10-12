-- SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[TestSchema].[SchemaTableFunction](1) [t1]

-- SqlServer.2025
SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1

