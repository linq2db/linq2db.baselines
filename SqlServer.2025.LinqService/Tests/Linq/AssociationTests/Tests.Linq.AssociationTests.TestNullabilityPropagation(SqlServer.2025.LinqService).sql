BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]
		LEFT JOIN [Child] [a_Middle] ON [t].[ParentID] = [a_Middle].[ParentID]
WHERE
	[a_Middle].[ParentID] <> 4 OR [a_Middle].[ParentID] IS NULL

