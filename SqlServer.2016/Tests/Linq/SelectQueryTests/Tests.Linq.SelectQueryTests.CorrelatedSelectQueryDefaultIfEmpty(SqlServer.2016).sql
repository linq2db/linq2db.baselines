-- SqlServer.2016
SELECT
	[c_1].[ChildID],
	IIF([error].[c1] = 1 OR [error].[c2] = 1, 5, 3),
	IIF([error].[c1] = 1 OR [error].[c2] = 1, N'bad', NULL)
FROM
	[Parent] [p]
		CROSS JOIN [Child] [c_1]
		OUTER APPLY (
			SELECT
				IIF([c_1].[ChildID] <> [p].[ParentID] * 10 + 1, 1, 0) as [c1],
				IIF(NOT EXISTS(
					SELECT
						[p].[Value1]
					INTERSECT
					SELECT
						[c_1].[ParentID]
				), 1, 0) as [c2]
		) [error]
WHERE
	[c_1].[ParentID] = [p].[ParentID]

-- SqlServer.2016
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.2016
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- SqlServer.2016
SELECT
	NULL

-- SqlServer.2016
SELECT
	N'bad'

-- SqlServer.2016
SELECT
	N'bad'

-- SqlServer.2016
SELECT
	NULL

-- SqlServer.2016
SELECT
	N'bad'

-- SqlServer.2016
SELECT
	N'bad'

-- SqlServer.2016
SELECT
	N'bad'

-- SqlServer.2016
SELECT
	N'bad'

-- SqlServer.2016
SELECT
	N'bad'

-- SqlServer.2016
SELECT
	N'bad'

-- SqlServer.2016
SELECT
	NULL

-- SqlServer.2016
SELECT
	N'bad'

-- SqlServer.2016
SELECT
	N'bad'

-- SqlServer.2016
SELECT
	N'bad'

-- SqlServer.2016
SELECT
	N'bad'

-- SqlServer.2016
SELECT
	N'bad'

-- SqlServer.2016
SELECT
	N'bad'

-- SqlServer.2016
SELECT
	[c_1].[ChildID],
	IIF([c_1].[ChildID] <> [p].[ParentID] * 10 + 1 OR NOT EXISTS(
		SELECT
			[p].[Value1]
		INTERSECT
		SELECT
			[c_1].[ParentID]
	), 5, 3),
	IIF([c_1].[ChildID] <> [p].[ParentID] * 10 + 1 OR NOT EXISTS(
		SELECT
			[p].[Value1]
		INTERSECT
		SELECT
			[c_1].[ParentID]
	), N'bad', NULL)
FROM
	[Parent] [p],
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = [p].[ParentID]

-- SqlServer.2016
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.2016
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- SqlServer.2016
SELECT
	NULL

-- SqlServer.2016
SELECT
	N'bad'

-- SqlServer.2016
SELECT
	N'bad'

-- SqlServer.2016
SELECT
	NULL

-- SqlServer.2016
SELECT
	N'bad'

-- SqlServer.2016
SELECT
	N'bad'

-- SqlServer.2016
SELECT
	N'bad'

-- SqlServer.2016
SELECT
	N'bad'

-- SqlServer.2016
SELECT
	N'bad'

-- SqlServer.2016
SELECT
	N'bad'

-- SqlServer.2016
SELECT
	NULL

-- SqlServer.2016
SELECT
	N'bad'

-- SqlServer.2016
SELECT
	N'bad'

-- SqlServer.2016
SELECT
	N'bad'

-- SqlServer.2016
SELECT
	N'bad'

-- SqlServer.2016
SELECT
	N'bad'

-- SqlServer.2016
SELECT
	N'bad'

