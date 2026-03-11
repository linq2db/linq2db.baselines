-- Access.Ace.Odbc AccessODBC
DECLARE @offset Int -- Int32
SET     @offset = -1

UPDATE
	[Issue4963Table] [t1]
SET
	[t1].[Field] = [t1].[Field] + ?

-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[t1].[Id],
	[t1].[Field]
FROM
	[Issue4963Table] [t1]

