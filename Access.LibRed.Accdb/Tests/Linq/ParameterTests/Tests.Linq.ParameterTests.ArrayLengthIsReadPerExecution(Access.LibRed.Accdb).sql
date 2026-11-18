-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @arr  -- Int32
SET     @arr = 1

SELECT TOP 2
	[t].[Id],
	[t].[Value]
FROM
	[ArrayLengthTable] [t]
WHERE
	[t].[Id] = @arr

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @arr  -- Int32
SET     @arr = 2

SELECT TOP 2
	[t].[Id],
	[t].[Value]
FROM
	[ArrayLengthTable] [t]
WHERE
	[t].[Id] = @arr

