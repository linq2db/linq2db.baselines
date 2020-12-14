BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[c1]
FROM
	(
		SELECT
			Iif([selectParam].[ParentID] > 2, Iif([selectParam].[ParentID] > 3, '1', '2'), '3') as [c1]
		FROM
			[Child] [selectParam]
	) [t1]
GROUP BY
	[t1].[c1]

BeforeExecute
-- Access AccessOleDb
DECLARE @p_1 VarWChar(1) -- String
SET     @p_1 = '1'

SELECT
	[underscore].[ParentID],
	[underscore].[ChildID]
FROM
	(
		SELECT
			Iif([selectParam].[ParentID] > 2, Iif([selectParam].[ParentID] > 3, '1', '2'), '3') as [Key_1],
			[selectParam].[ParentID],
			[selectParam].[ChildID]
		FROM
			[Child] [selectParam]
	) [underscore]
WHERE
	[underscore].[Key_1] = @p_1

