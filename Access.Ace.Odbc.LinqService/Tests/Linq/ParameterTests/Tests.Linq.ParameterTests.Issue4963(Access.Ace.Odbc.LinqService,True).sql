BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

UPDATE
	[Issue4963Table] [t1]
SET
	[t1].[Field] = [t1].[Field] + -1

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT TOP 2
	[t1].[Id],
	[t1].[Field]
FROM
	[Issue4963Table] [t1]

