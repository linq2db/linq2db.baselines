-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @TestName  -- Int32
SET     @TestName = 2

UPDATE
	[testparams] [t]
SET
	[t].[Test-Name] = @TestName
WHERE
	[t].[Test-Name] = 1

