-- Access.Ace.Odbc AccessODBC

SELECT
	[p].[Key_1] + '2'
FROM
	(
		SELECT DISTINCT
			IIF([g_1].[ParentID] > 2, IIF([g_1].[ParentID] > 3, '1', '2'), '3') as [Key_1]
		FROM
			[Child] [g_1]
	) [p]
WHERE
	[p].[Key_1] + '2' = '22'

