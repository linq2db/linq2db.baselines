BeforeExecute
-- Access.Jet.Odbc AccessODBC

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
				SELECT -10 AS [X], -10 AS [X0], 10 AS [Y]) [t]
		WHERE
			[x].[position].x > [t].[X]
	)

