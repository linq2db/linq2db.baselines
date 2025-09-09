BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] IN (
		SELECT
			[p].[ParentID]
		FROM
			(
				SELECT TOP (3)
					*
				FROM
					[Parent] [p1]
				WHERE
					[p1].[Value1] = [p].[Value1] OR [p1].[Value1] IS NULL AND [p].[Value1] IS NULL
			) [t1]
	)

