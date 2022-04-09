BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2019

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
-- SqlServer.2019
DECLARE @p_1 NVarChar(4000) -- String
SET     @p_1 = N'1'

SELECT
	[selectParam].[ParentID],
	[selectParam].[ChildID]
FROM
	[Child] [selectParam]
WHERE
	IIF([selectParam].[ParentID] > 2, IIF([selectParam].[ParentID] > 3, N'1', N'2'), N'3') = @p_1

