BeforeExecute
-- Access AccessOleDb

SELECT 
	[p].[c1]
FROM
	( 
		SELECT 
			[ch].[c1] + '2' as [c1]
		FROM
			( 
				SELECT 
					Iif([selectParam].[ParentID] > 2, Iif([selectParam].[ParentID] > 3, '1', '2'), '3') as [c1]
				FROM
					[Child] [selectParam]
			) [ch]
		GROUP BY
			[ch].[c1]
	) [p]
WHERE
	[p].[c1] = '22'

