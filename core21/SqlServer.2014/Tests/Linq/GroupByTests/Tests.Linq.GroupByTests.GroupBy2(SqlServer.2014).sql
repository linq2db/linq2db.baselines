BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[t1].[Key_1]
FROM
	(
		SELECT
			IIF([selectParam].[Value1] IS NULL, [c_1].[ChildID], [selectParam].[Value1]) as [Key_1]
		FROM
			[Parent] [selectParam]
				INNER JOIN [Child] [c_1] ON [selectParam].[ParentID] = [c_1].[ParentID]
	) [t1]
GROUP BY
	[t1].[Key_1]

