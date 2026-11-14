-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @name  -- Int32
SET     @name = 4

SELECT
	[t].[Id],
	[t].[Value],
	[t].[Money]
FROM
	[ParameterCastUnderCastTable] [t]
WHERE
	[t].[Value] = CStr(@name)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @name  -- Int32
SET     @name = 4

SELECT
	[t].[Id],
	[t].[Value],
	[t].[Money]
FROM
	[ParameterCastUnderCastTable] [t]
WHERE
	[t].[Money] = @name

