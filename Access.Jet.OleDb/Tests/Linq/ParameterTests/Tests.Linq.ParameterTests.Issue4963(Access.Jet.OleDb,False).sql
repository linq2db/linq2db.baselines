BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @offset Integer -- Int32
SET     @offset = -1

UPDATE
	[Issue4963Table] [t1]
SET
	[t1].[Field] = [t1].[Field] + @offset

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[t1].[Field]
FROM
	[Issue4963Table] [t1]

