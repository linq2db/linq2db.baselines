BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @offset Int -- Int32
SET     @offset = -1

UPDATE
	[Issue4963Table] [t1]
SET
	[t1].[Field] = [t1].[Field] + ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT TOP 2
	[t1].[Id],
	[t1].[Field]
FROM
	[Issue4963Table] [t1]

