BeforeExecute
BeginTransaction
BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Key_1]
FROM
	(
		SELECT
			Iif([selectParam].[ParentID] > 2, Iif([selectParam].[ParentID] > 3, '1', '2'), '3') as [Key_1]
		FROM
			[Child] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1]

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

