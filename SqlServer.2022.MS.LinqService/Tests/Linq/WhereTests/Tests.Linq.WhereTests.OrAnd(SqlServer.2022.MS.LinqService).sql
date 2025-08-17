BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	([c_1].[ParentID] = 2 OR [c_1].[ParentID] = 3) AND
	[c_1].[ChildID] <> 21

