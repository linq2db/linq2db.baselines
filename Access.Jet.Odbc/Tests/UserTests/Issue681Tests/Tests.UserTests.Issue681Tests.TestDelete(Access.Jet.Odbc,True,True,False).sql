-- Access.Jet.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 5

DELETE FROM
	[Database\TestData.ODBC.mdb].[Issue681Table] [t1]
WHERE
	[t1].[ID] = ?

