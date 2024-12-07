BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 3
	[x].[position]
FROM
	[entities] [x]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT -10 AS [X], 10 AS [Y]) [t]
		WHERE
			[x].[position].x > [t].[X]
	)

