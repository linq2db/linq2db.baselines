-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @take  -- Int32
SET     @take = 3

SELECT DISTINCT TOP @take
	[r].[Value]
FROM
	[TakeSkipClass] [r]

