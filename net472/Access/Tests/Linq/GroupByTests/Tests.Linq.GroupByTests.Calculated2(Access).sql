BeforeExecute
-- Access AccessOleDb

SELECT
	[p].[c1]
FROM
	(
		SELECT
			Iif([selectParam].[ParentID] > 2, Iif([selectParam].[ParentID] > 3, '1', '2'), '3') + '2' as [c1]
		FROM
			[Child] [selectParam]
		GROUP BY
			Iif([selectParam].[ParentID] > 2, Iif([selectParam].[ParentID] > 3, '1', '2'), '3')
	) [p]
WHERE
	[p].[c1] = '22'

