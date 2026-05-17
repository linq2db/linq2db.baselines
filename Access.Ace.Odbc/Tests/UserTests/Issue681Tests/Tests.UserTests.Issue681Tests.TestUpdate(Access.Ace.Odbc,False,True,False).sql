-- Access.Ace.Odbc AccessODBC
DECLARE @Value Int -- Int32
SET     @Value = 10
DECLARE @ID Int -- Int32
SET     @ID = 5

UPDATE
	[Database\TestData.ODBC.mdb].[Issue681Table] [t1]
SET
	[t1].[Value] = ?
WHERE
	[t1].[ID] = ?

