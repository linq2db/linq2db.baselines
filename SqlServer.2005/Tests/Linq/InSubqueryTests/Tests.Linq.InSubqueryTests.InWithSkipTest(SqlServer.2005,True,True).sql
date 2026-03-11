-- SqlServer.2005

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					[t1].[ParentID]
				FROM
					(
						SELECT
							[v].[ParentID],
							ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) as [RN]
						FROM
							[Parent] [v]
					) [t1]
				WHERE
					[t1].[RN] > 100
			) [t2]
		WHERE
			[c_1].[ParentID] = [t2].[ParentID]
	)

-- SqlServer.2005

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- SqlServer.2005

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

