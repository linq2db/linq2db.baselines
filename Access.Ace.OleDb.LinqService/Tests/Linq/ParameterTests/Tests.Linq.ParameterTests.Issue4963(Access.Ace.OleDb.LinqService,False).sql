BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @offset Integer -- Int32
SET     @offset = -1

UPDATE
	[Issue4963Table] [t1]
SET
	[t1].[Field] = [t1].[Field] + @offset

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT TOP 2
	[t1].[Field]
FROM
	[Issue4963Table] [t1]

