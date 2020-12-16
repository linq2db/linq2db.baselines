BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[t1].[c1]
FROM
	(
		SELECT
			IIF([selectParam].[ParentID] > 2, IIF([selectParam].[ParentID] > 3, N'1', N'2'), N'3') as [c1]
		FROM
			[Child] [selectParam]
	) [t1]
GROUP BY
	[t1].[c1]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @p_1 NVarChar(4000) -- String
SET     @p_1 = N'1'

SELECT
	[underscore].[ParentID],
	[underscore].[ChildID]
FROM
	(
		SELECT
			IIF([selectParam].[ParentID] > 2, IIF([selectParam].[ParentID] > 3, N'1', N'2'), N'3') as [Key_1],
			[selectParam].[ParentID],
			[selectParam].[ChildID]
		FROM
			[Child] [selectParam]
	) [underscore]
WHERE
	[underscore].[Key_1] = @p_1

