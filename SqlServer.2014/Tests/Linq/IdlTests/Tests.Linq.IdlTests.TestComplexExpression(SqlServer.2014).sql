BeforeExecute
-- SqlServer.2014

SELECT
	[e].[ChildID]
FROM
	[GrandChild] [e]
WHERE
	[e].[ChildID] = 1 AND [e].[ChildID] IS NOT NULL

