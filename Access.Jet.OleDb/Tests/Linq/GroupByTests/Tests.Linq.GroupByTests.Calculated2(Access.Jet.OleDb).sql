-- Access.Jet.OleDb AccessOleDb

SELECT
	[p].[c1]
FROM
	(
		SELECT
			[ch].[Key_1] + '2' as [c1]
		FROM
			(
				SELECT DISTINCT
					IIF([g_1].[ParentID] > 2, IIF([g_1].[ParentID] > 3, '1', '2'), '3') as [Key_1]
				FROM
					[Child] [g_1]
			) [ch]
	) [p]
WHERE
	[p].[c1] = '22'

