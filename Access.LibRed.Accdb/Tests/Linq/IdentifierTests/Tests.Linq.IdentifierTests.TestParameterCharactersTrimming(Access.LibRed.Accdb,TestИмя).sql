-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Test  -- Int32
SET     @Test = 2

UPDATE
	[testparams] [t]
SET
	[t].[TestИмя] = @Test
WHERE
	[t].[TestИмя] = 1

