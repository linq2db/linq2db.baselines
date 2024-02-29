BeforeExecute
-- SqlServer.2014

SELECT
	[t1].[Key_1]
FROM
	(
		SELECT
			IIF([selectParam].[ParentID] > 2, IIF([selectParam].[ParentID] > 3, N'1', N'2'), N'3') as [Key_1]
		FROM
			[Child] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1]

BeforeExecute
-- SqlServer.2014
DECLARE @p NVarChar(4000) -- String
SET     @p = N'1'

SELECT
	[selectParam].[ParentID],
	[selectParam].[ChildID]
FROM
	[Child] [selectParam]
WHERE
	IIF([selectParam].[ParentID] > 2, IIF([selectParam].[ParentID] > 3, N'1', N'2'), N'3') = @p

