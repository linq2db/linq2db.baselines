BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	COUNT(IIF([ch].[ChildID] > 30, 1, NULL)),
	SUM(IIF([ch].[ChildID] > 30, [ch].[ChildID], NULL)),
	MIN(IIF([ch].[ChildID] > 30, [ch].[ChildID], NULL)),
	MAX(IIF([ch].[ChildID] > 30, [ch].[ChildID], NULL)),
	AVG(IIF([ch].[ChildID] > 30, [ch].[ChildID], NULL))
FROM
	[Child] [ch]
WHERE
	[ch].[ChildID] > 30
GROUP BY
	[ch].[ParentID]

