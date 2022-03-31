BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @v1 Int -- Int32
SET     @v1 = 1
DECLARE @v2 Int -- Int32
SET     @v2 = 1

UPDATE
	[Parent] [t1]
SET
	[t1].[Value1] = ?
WHERE
	[t1].[Value1] = ?

