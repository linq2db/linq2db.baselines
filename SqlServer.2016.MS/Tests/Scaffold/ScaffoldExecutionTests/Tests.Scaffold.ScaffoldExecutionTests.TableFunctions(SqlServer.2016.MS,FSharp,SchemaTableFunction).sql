-- SqlServer.2016.MS SqlServer.2016
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[TestSchema].[SchemaTableFunction](1) [t1]

-- SqlServer.2016.MS SqlServer.2016
SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1

