-- Access.Ace.Odbc AccessODBC

UPDATE
	[TrimTestTable] [t1]
SET
	[t1].[Data] = '***III***'
WHERE
	[t1].[ID] = 3

-- Access.Ace.Odbc AccessODBC

UPDATE
	[TrimTestTable] [t]
SET
	[t].[Data] = '***OOO***'
WHERE
	[t].[Data] = '***XXX***'

-- Access.Ace.Odbc AccessODBC

UPDATE
	[TrimTestTable] [t]
SET
	[t].[Data] = '***SSS***'
WHERE
	[t].[Data] = '***HHH***'

-- Access.Ace.Odbc AccessODBC

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

-- Access.Ace.Odbc AccessODBC

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

