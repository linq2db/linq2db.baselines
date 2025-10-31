-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	[t].[ID] IN (
		SELECT
			[p].[ID]
		FROM
			[test_in_2] [p]
	)

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

