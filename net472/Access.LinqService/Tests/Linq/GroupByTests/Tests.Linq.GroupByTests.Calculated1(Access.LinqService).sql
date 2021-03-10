BeforeExecute
-- Access AccessOleDb

SELECT
	Iif([selectParam].[ParentID] > 2, Iif([selectParam].[ParentID] > 3, '1', '2'), '3')
FROM
	[Child] [selectParam]
GROUP BY
	Iif([selectParam].[ParentID] > 2, Iif([selectParam].[ParentID] > 3, '1', '2'), '3')

BeforeExecute
-- Access AccessOleDb
DECLARE @p_1 VarWChar(1) -- String
SET     @p_1 = '1'

SELECT
	[selectParam].[ParentID],
	[selectParam].[ChildID]
FROM
	[Child] [selectParam]
WHERE
	Iif([selectParam].[ParentID] > 2, Iif([selectParam].[ParentID] > 3, '1', '2'), '3') = @p_1

