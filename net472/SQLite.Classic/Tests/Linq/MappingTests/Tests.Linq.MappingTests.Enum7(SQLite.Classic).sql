BeforeExecute
BeginTransaction
BeforeExecute
-- SQLite.Classic SQLite
DECLARE @v1  -- Int32
SET     @v1 = 1

UPDATE
	[Parent]
SET
	[Value1] = @v1
WHERE
	[Parent].[Value1] = @v1

