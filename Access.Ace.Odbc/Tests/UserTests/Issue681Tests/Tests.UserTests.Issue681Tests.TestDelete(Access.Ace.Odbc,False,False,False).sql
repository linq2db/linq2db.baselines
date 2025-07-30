BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 5

DELETE FROM
	[Issue681Table] [t1]
WHERE
	[t1].[ID] = ?

