-- SqlServer.2022.MS SqlServer.2022
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[TestSchema].[SchemaTableFunction](1) [t1]

-- SqlServer.2022.MS SqlServer.2022
SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1

