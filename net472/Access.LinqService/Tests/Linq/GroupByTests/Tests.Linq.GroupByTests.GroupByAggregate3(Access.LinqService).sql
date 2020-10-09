BeforeExecute
-- Access AccessOleDb

SELECT 
	[t1].[Key_1]
FROM
	( 
		SELECT 
			Iif((
				SELECT 
					Avg([c_1].[ParentID])
				FROM
					[Child] [c_1]
				WHERE
					[selectParam].[ParentID] = [c_1].[ParentID]
			) > 3, True, False) as [Key_1]
		FROM
			[Parent] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1]

BeforeExecute
-- Access AccessOleDb
DECLARE @p1 Boolean
SET     @p1 = False

SELECT 
	[underscore].[ParentID], 
	[underscore].[Value1]
FROM
	( 
		SELECT 
			Iif((
				SELECT 
					Avg([c_1].[ParentID])
				FROM
					[Child] [c_1]
				WHERE
					[selectParam].[ParentID] = [c_1].[ParentID]
			) > 3, True, False) as [Key_1], 
			[selectParam].[ParentID], 
			[selectParam].[Value1]
		FROM
			[Parent] [selectParam]
	) [underscore]
WHERE
	[underscore].[Key_1] = @p1

