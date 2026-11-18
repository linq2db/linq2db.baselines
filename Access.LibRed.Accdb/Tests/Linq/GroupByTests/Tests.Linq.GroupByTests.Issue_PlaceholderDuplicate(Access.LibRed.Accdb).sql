-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @take  -- Int32
SET     @take = 100

SELECT TOP @take
	[r].[PersonID]
FROM
	[Person] [r]
ORDER BY
	[r].[PersonID]

