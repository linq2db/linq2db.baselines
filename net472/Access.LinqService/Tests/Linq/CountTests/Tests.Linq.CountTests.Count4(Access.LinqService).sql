BeforeExecute
-- Access AccessOleDb

SELECT 
	(
		SELECT 
			Count(*)
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

