BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 3
	[x].[position]
FROM
	[entities] [x]
WHERE
	EXISTS(
		SELECT
			1
		FROM
			(
				SELECT -10 AS [X]) [t]
		WHERE
			[x].[position].x > [t].[X]
	)

