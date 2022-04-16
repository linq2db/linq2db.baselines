BeforeExecute
-- Access AccessOleDb
DECLARE @v1 Integer -- Int32
SET     @v1 = 1
DECLARE @v2 Integer -- Int32
SET     @v2 = 1

UPDATE
	[Parent] [t1]
SET
	[t1].[Value1] = @v1
WHERE
	[t1].[Value1] = @v2

