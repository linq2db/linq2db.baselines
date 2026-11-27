-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 5

DELETE FROM
	[QualifiedNameTable] [t1]
WHERE
	[t1].[ID] = @ID

