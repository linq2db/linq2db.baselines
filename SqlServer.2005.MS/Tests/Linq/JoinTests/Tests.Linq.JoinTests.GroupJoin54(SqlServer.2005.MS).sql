BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [ch_1]
		WHERE
			[t2].[ParentID] = [ch_1].[ParentID]
	),
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Parent] [t2]
		CROSS APPLY (
			SELECT TOP (1)
				[ch].[ParentID],
				[ch].[ChildID]
			FROM
				[Child] [ch]
			WHERE
				[t2].[ParentID] = [ch].[ParentID]
		) [t1]
WHERE
	[t2].[ParentID] = 1

