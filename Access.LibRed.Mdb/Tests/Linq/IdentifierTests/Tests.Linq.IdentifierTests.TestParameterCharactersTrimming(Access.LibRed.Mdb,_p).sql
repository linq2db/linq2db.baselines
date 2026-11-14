-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @p  -- Int32
SET     @p = 2

UPDATE
	[testparams] [t]
SET
	[t].[_p] = @p
WHERE
	[t].[_p] = 1

