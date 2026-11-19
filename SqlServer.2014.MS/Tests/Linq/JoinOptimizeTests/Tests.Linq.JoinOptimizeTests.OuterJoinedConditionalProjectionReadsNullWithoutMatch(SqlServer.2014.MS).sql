-- SqlServer.2014.MS SqlServer.2014
SELECT
	[p].[ParentID],
	CASE
		WHEN [x].[ParentID] IS NULL THEN NULL
		WHEN [x].[Value1] IS NULL THEN N'none'
		ELSE NULL
	END
FROM
	[Parent] [p]
		LEFT JOIN [Parent] [x] ON [x].[ParentID] = [p].[ParentID] + 1

-- SqlServer.2014.MS SqlServer.2014
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.2014.MS SqlServer.2014
SELECT
	[p].[ParentID],
	CASE
		WHEN [x].[ParentID] IS NULL THEN NULL
		WHEN [x].[Value1] IS NULL THEN N'none'
		ELSE NULL
	END
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				[q].[Value1],
				[q].[ParentID]
			FROM
				[Parent] [q]
		) [x] ON [x].[ParentID] = [p].[ParentID] + 1

-- SqlServer.2014.MS SqlServer.2014
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

