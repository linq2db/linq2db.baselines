BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[Key_1],
	Avg([t1].[ParentID])
FROM
	(
		SELECT
			[selectParam].[ChildID] as [Key_1],
			[selectParam].[ParentID]
		FROM
			[Child] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1]

