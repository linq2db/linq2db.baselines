BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] IN (
		SELECT
			[t2].[ParentID]
		FROM
			(
				SELECT
					[t1].[ParentID]
				FROM
					(
						SELECT
							[p].[ParentID],
							ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) as [RN]
						FROM
							[Parent] [p]
					) [t1]
				WHERE
					[t1].[RN] > 1 AND [t1].[RN] <= 101
			) [t2]
	)

