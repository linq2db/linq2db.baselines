-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 5

DELETE FROM
	[QualifiedNameTable] [t1]
WHERE
	[t1].[ID] = ?

