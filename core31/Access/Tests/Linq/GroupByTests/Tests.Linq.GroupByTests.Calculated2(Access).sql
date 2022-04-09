BeforeExecute
-- Access AccessOleDb

SELECT
	[p].[c1]
FROM
	(
		SELECT
			[ch].[Key_1] + '2' as [c1]
		FROM
			(
				SELECT
					Iif([selectParam].[ParentID] > 2, Iif([selectParam].[ParentID] > 3, '1', '2'), '3') as [Key_1]
				FROM
					[Child] [selectParam]
			) [ch]
		GROUP BY
			[ch].[Key_1]
	) [p]
WHERE
	[p].[c1] = '22'

