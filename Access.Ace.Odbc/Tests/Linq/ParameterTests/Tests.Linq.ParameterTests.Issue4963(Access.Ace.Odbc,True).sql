-- Access.Ace.Odbc AccessODBC

UPDATE
	[Issue4963Table] [t1]
SET
	[t1].[Field] = [t1].[Field] + -1

-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[t1].[Id],
	[t1].[Field]
FROM
	[Issue4963Table] [t1]

