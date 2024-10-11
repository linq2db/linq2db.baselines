BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	MAX(IIF([ch].[ParentID] < 3, [ch].[ChildID], NULL))
FROM
	[Child] [ch]
WHERE
	[ch].[ParentID] < 3
GROUP BY
	[ch].[ParentID]

